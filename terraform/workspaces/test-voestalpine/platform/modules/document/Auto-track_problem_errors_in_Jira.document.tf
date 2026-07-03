resource "dynatrace_document" "Auto-track_problem_errors_in_Jira" {
  name      = "Auto-track problem errors in Jira"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: auto-track-problem-errors-in-jira
      dependencies:
        apps:
        - id: dynatrace.jira
          version: ^5.6.8-dev.20260202T024112+9dc089e4
      inputs:
      - type: connection
        schema: app:dynatrace.jira:connection
        targets:
        - tasks.find_matching_bug.connectionId
        - tasks.comment_on_existing_bug.connectionId
        - tasks.create_jira_bug_for_problem.connectionId
    workflow:
      title: Auto-track Problem errors in Jira
      description: ''
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND dt.analysis.ready == true AND
            (event.category == "ERROR")
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"]
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
        # Auto-track problem errors in Jira
    
        Creates a Jira bug for new problems and updates an existing bug with a recurrence comment when the same problem reoccurs.
    
        # Setup
    
        If your environment doesn't already have a Jira connection, you'll need to create one with permissions to read and create issues in the target project.
        For detailed instructions, see [Set up Jira integration](https://dt-url.net/ug02rll).
    
        # Trigger
    
        By default, this workflow uses a problem [trigger](?trigger=) that fires when error problems become active.
    
        To modify the trigger:
        - **Problem state**: Choose `active` to track only when problems open or reopen, or `active or closed` to also track when problems resolve.
        - **Event category**: Keep `Error`, or add other categories like `Availability`, `Slowdown`, `Resource`, or `Custom`.
        - **Affected entities**: Use entity tags to limit tracking to specific services, applications, or hosts.
        - **Additional custom filter**: Refine by severity or other criteria, for example:
        ```code
          event.severity_level == "ERROR_HIGH" OR event.severity_level == "ERROR_CRITICAL"
        ```
    
        To verify your configuration, use Query past events to see which recent problems would have triggered this workflow.
    
        # Search for existing Jira bug
    
        In the task [find_matching_bug](?task=find_matching_bug&tab=input), configure the JQL query to find existing bugs for the same problem.
    
        Update the query to match your Jira project and issue type:
    
        ```jql
        issuetype = Bug
        AND status in ("Open", "New")
        AND (
          summary ~ "{{ event()['display_id'] }}"
          OR labels = "{{ event()['display_id'] }}"
        )
        ```
    
        Adjust the issue type, status values, and search criteria to match your Jira configuration.
    
        # Create new Jira bug
    
        In the task [create_jira_bug_for_problem](?task=create_jira_bug_for_problem&tab=input), configure how new bugs are created when no existing bug is found.
    
        Set the following fields:
    
        - **Project**: Your Jira project key (for example, `ISSUE`)
        - **Issue type**: `Bug` (or your preferred type)
        - **Summary**:
        ```jinja
        [{{ event()["display_id"] }}] {{ event()["event.name"] }}
        ```
        - **Description**: The preconfigured template includes problem details and a link to Dynatrace
        - **Fields**: Add any required custom fields for your project:
        ```json
        {
          "customfield_12900": { "value": "DEV" }
        }
        ```
    
        In the task conditions, verify the condition is set to:
    
        ```jinja
        {{ result("find_matching_bug") | length == 0 }}
        ```
    
        This ensures a bug is only created when no existing bug is found.
    
        # Add recurrence comment
    
        In the task [comment_on_existing_bug](?task=comment_on_existing_bug&tab=input), configure the comment added to existing bugs when a problem reoccurs.
    
        The Issue key is set to:
    
        ```jinja
        {{ result("find_matching_bug")[0]["key"] }}
        ```
    
        The Comment template includes recurrence details and is preconfigured. Customize it if needed to match your team's format.
    
        In the task conditions, verify the condition is set to:
    
        ```jinja
        {{ result("find_matching_bug") | length > 0 }}
        ```
    
        This ensures a comment is only added when an existing bug is found.
    
        # Customization examples
    
        Use these examples for common adjustments:
    
        **Use a different issue type**
        In the [find_matching_bug](?task=find_matching_bug&tab=input) and [create_jira_bug_for_problem](?task=create_jira_bug_for_problem&tab=input) tasks:
    
        ```jql
        issuetype = Incident
        ```
    
        **Add environment to the summary**
        In the [create_jira_bug_for_problem](?task=create_jira_bug_for_problem&tab=input) Summary field:
    
        ```jinja
        [{{ event()["display_id"] }}] {{ event()["event.name"] }} ({{ event()["dt.entity.environment"][0] }})
        ```
    
        **Add labels for easier search**
        In the [create_jira_bug_for_problem](?task=create_jira_bug_for_problem&tab=input) task, add labels:
    
        ```json
        {
          "labels": ["dynatrace", "auto-created"]
        }
        ```
    
        **Route bugs to different projects**
        Duplicate the create task and add conditions based on entity tags or problem category to route bugs to different Jira projects.
    
        **Reduce noise**
        Add filters in the Trigger to exclude low-severity problems or use entity tags to track only production services.
      tasks:
        find_matching_bug:
          name: find_matching_bug
          input:
            jql: "issuetype = Bug\nAND status in (\"Open\", \"New\")\nAND (\n  summary\
              \ ~ \"{{ event()[\"display_id\"] }}\"\n  OR labels = \"{{ event()[\"display_id\"\
              ] }}\"\n)"
            expand: []
            fields: []
            connectionId: ''
          action: dynatrace.jira:jira-jql-search
          position:
            x: 0
            y: 1
          description: Execute JQL queries to fetch issues from Jira
          predecessors: []
        comment_on_existing_bug:
          name: comment_on_existing_bug
          input:
            comment: |
              h3. Problem recurrence detected
    
              A new occurrence of this problem has been detected.
    
              *Display ID:* {{ event()["display_id"] }}
              *Name:* {{ event()["event.name"] }}
              *Event ID:* {{ event()["event.id"] }}
              *Status:* {{ event()["event.status"] }}
              *Category:* {{ event()["event.category"] }}
              *Detected at:* {{ event()["timestamp"] }}
    
              ----
    
              h4. Latest event details from monitoring
    
              {{ event()["event.description"] }}
            issueID: '{{ result("find_matching_bug")[0]["key"] }}'
            connectionId: ''
          action: dynatrace.jira:jira-add-comment
          active: true
          position:
            x: -1
            y: 2
          conditions:
            else: SKIP
            custom: '{{ result("find_matching_bug") | length != 0 }}'
            states:
              find_matching_bug: OK
          description: Comment on a Jira issue
          predecessors:
          - find_matching_bug
        create_jira_bug_for_problem:
          name: create_jira_bug_for_problem
          input:
            labels: []
            summary: '[{{event()["display_id"]}}] {{ event()["event.name"] }}'
            priority: High
            issueType: Bug
            components: []
            description: 'h2. Problem overview
    
    
              *Display ID:* {{ event()["display_id"] }}
    
              *Event name:* {{ event()["event.name"] }}
    
              *Event ID:* {{ event()["event.id"] }}
    
              *Status:* {{ event()["event.status"] }}
    
              *Category:* {{ event()["event.category"] }}
    
              *Kind:* {{ event()["event.kind"] }}
    
              *Start time:* {{ event()["event.start"] }}
    
    
              ----
    
    
              h2. Impact
    
    
              *Affected entity type(s):* {{ event()["affected_entity_types"] | join(",
              ") }}
    
              *Affected entity ID(s):* {{ event()["affected_entity_ids"] | join(", ")
              }}
    
              *Impact level:* {{ event()["dt.davis.impact_level"] | join(", ") }}
    
    
              ----
    
    
              h2. Event details
    
    
              {{ event()["event.description"] }}
    
    
              ----
    
    
              h2. Problem analysis metadata
    
    
              *Mute status:* {{ event()["dt.davis.mute.status"] }}
    
              *Frequent event:* {{ event()["dt.davis.is_frequent_event"] }}
    
              *Duplicate:* {{ event()["dt.davis.is_duplicate"] }}
    
              *Under maintenance:* {{ event()["maintenance.is_under_maintenance"] }}
    
              *Related event ID(s):* {{ event()["dt.davis.event_ids"] | join(", ") }}
    
              *Analysis ready:* {{ event()["dt.analysis.ready"] }}
    
              *Analysis offset:* {{ event()["dt.analysis.offset"] }}
    
              *Pipeline source:* {{ event()["dt.openpipeline.source"] }}
    
              *Pipelines:* {{ event()["dt.openpipeline.pipelines"] | join(", ") }}
    
    
              ----'
            connectionId: ''
            fieldSetters:
            - key: customfield_12900
              value: '{ "value": "DEV" }'
          action: dynatrace.jira:jira-create-issue
          active: true
          position:
            x: 1
            y: 2
          conditions:
            else: SKIP
            custom: '{{ result("find_matching_bug") | length == 0 }}'
            states:
              find_matching_bug: OK
          description: Create new Jira issue with various fields
          predecessors:
          - find_matching_bug
        annotate_problem_with_jira_issue:
          name: annotate_problem_with_jira_issue
          input:
            url: '{{ result("create_jira_bug_for_problem")["url"] }}'
            eventName: 'Jira: {{ result("create_jira_bug_for_problem")["key"] }} - {{ event()["event.name"] }}'
            problemId: '{{ event()["event.id"] }}'
            annotationSource: 'Workflow automation'
            eventDescription: '#### Added by workflow automation
            
              - Jira ticket ID: [{{ result("create_jira_bug_for_problem")["key"] }}]({{ result("create_jira_bug_for_problem")["url"] }})'
          action: dynatrace.davis.problems:annotate-and-link
          active: true
          position:
            x: 1
            y: 3
          conditions:
            custom: '{{ result("create_jira_bug_for_problem") | length != 0 }}'
            states:
              create_jira_bug_for_problem: OK
          description: Annotate the problem with a link to the created Jira issue
          predecessors:
          - create_jira_bug_for_problem
    
    EOT
  custom_id = "dynatrace.jira.auto-track-problem-errors-in-jira"
  # private = false
}
