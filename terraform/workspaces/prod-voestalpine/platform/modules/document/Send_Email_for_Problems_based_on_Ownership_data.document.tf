resource "dynatrace_document" "Send_Email_for_Problems_based_on_Ownership_data" {
  name      = "Send Email for Problems based on Ownership data"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: send-email-for-problems-ownership
      dependencies:
        apps:
        - id: dynatrace.email
          version: ^1.8.6-dev.20260206T061657+64369db9
        - id: dynatrace.ownership
          version: ^2.2.2-dev.20260128T065327+60c3e84a
      inputs: []
    workflow:
      title: Send Email for Problems based on Ownership data
      description: ''
      schemaVersion: 4
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND dt.analysis.ready == true AND
            (event.category == "ERROR")
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status"]
            == "ACTIVE" else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"]
            }}'
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                error: true
              entityTags: {}
              customFilter: ''
              analysisReady: true
              onProblemClose: false
              entityTagsMatch: all
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Send email notifications to owners of related hosts
    
        This workflow reacts to active problems, resolves the owners of the related hosts, and sends a problem summary email directly to those owners.
    
        # Setup
    
        No additional external connection is required to send emails from this workflow.
        For detailed configuration options of the email action, see [Send email action](https://dt-url.net/9022zbt).
    
        # Trigger
    
        By default, this workflow uses a problem [trigger](?trigger=) that triggers when selected problems become active or are updated.
    
        To modify the trigger:
    
        - **Problem state**: Choose whether to trigger only when problems become active, or also when they are updated or closed.
        - **Event category**: Adjust `event.category` to target specific types of problems (for example, `ERROR` or `AVAILABILITY`).
        - **Entity filtering**: Use entity tags or filters to limit notifications to specific services or host groups.
    
        # Use related host IDs from the problem
    
        The [problem trigger](?trigger=) output contains host references in `related_entity_ids`. This workflow uses these IDs to drive the owner lookup for the email recipients.
    
        1. **Access related host IDs**
    
           In the task that processes related hosts, use a Jinja expression:
    
           ```code
           {{event()["related_entity_ids"]}}
           ```
    
        2. **Skip processing if no related host exists**
    
           To prevent unnecessary tasks when no related hosts are present, the following condition is used:
    
           ```code
           {{ (event().get("related_entity_ids") or []) | length > 0 }}
           ```
    
           This ensures upcoming actions only run if at least one related host ID is available.
    
        # Resolve the owner email address
    
        Use the task [fetch_owner_for_problem](?task=fetch_owner_for_problem&tab=input) to map the related host IDs from the problem to the corresponding owner email address.
    
        Typical patterns:
    
        1. **Input**: Pass the related host IDs from the problem event into the lookup task.
        2. **Output**: Ensure the task returns a JSON object with an `email` field.
    
        You can then reference the result in the email task:
    
        ```code
        {{ result("fetch_owner_for_problem")["email"] }}
        ```
    
        # Configure the email
    
        In the task [notify_owner_about_problem](?task=notify_owner_about_problem&tab=input), configure the recipients, subject, and message content using Jinja expressions based on the problem event.
    
        1. **Recipients (`To` field)**
    
        The output email of the [fetch_owner_for_problem](?task=fetch_owner_for_problem&tab=input) task is used:
    
        ```code
        {{ result("fetch_owner_for_problem")["email"] }}
        ```
    
        2. **Subject**
    
        A recommended subject pattern using problem context:
    
        ```code
        {{ event()["event.status"] }} Problem {{ event()["display_id"] }}: {{ event()["event.category"] }} {{ event()["event.name"] }}
        ```
    
        This results in subjects like:
    
        ```text
        ACTIVE Problem P-26021: ERROR Failure rate increase
        ```
    
        3. **Message body**
    
        Use the problem description and a direct link back to the Problem app:
    
        ```code
        {{ event()["event.description"] }}
    
        Go to problem: {{ environment().url }}/ui/apps/dynatrace.davis.problems/problem/{{ event()["event.id"] }}
        ```
    
        You can extend the body with additional context, for example:
    
        ```code
        Status: {{ event()["event.status"] }}
        Impact level: {{ (event().get("dt.davis.impact_level") or []) | join(", ") }}
        Affected entity IDs: {{ (event().get("affected_entity_ids") or []) | join(", ") }}
        Related hosts: {{ (event().get("related_entity_ids") or []) | join(", ") }}
        ```
    
        This provides the owner with a concise but actionable summary, plus a deep link to investigate the problem in Dynatrace.
      tasks:
        fetch_owner_for_problem:
          name: fetch_owner_for_problem
          input:
            entityIds: '{{event()["related_entity_ids"]}}'
          action: dynatrace.ownership:get-ownership-from-entity
          position:
            x: 0
            y: 1
          conditions:
            else: SKIP
            custom: '{{ (event().get("related_entity_ids") or []) | length > 0 }}'
            states: {}
          description: Retrieves owners based on the releated entity id given in the problem
          predecessors: []
        notify_owner_about_problem:
          name: notify_owner_about_problem
          input:
            cc: []
            to:
            - '{{ result("fetch_owner_for_problem")["email"][0]["email"]}}'
            bcc: []
            content: '{{ event()["event.description"] }}
    
    
              Go to problem: {{ environment().url }}/ui/apps/dynatrace.davis.problems/problem/{{
              event()["event.id"] }}'
            subject: '{{ event()["event.status"] }} Problem {{ event()["display_id"] }}:
              {{ event()["event.category"] }} {{ event()["event.name"] }}'
          action: dynatrace.email:send-email
          position:
            x: 0
            y: 2
          conditions:
            else: SKIP
            custom: '{{ (event().get("related_entity_ids") or []) | length > 0 }}'
            states:
              fetch_owner_for_problem: OK
          description: Send email to the related owner of the problem
          predecessors:
          - fetch_owner_for_problem
    EOT
  custom_id = "dynatrace.ownership.send-email-for-problems-based-on-ownership-data"
  # private = false
}
