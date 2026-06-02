resource "dynatrace_document" "Email_Notifications_for_Problems" {
  name      = "Email Notifications for Problems"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: send-email-for-problems
      dependencies:
        apps:
        - id: dynatrace.email
          version: ^1.8.5-dev.20251216T075558+6b949614
      inputs: []
    workflow:
      title: Send Email Notifications for problems
      description: 'Send email alerts when problems are detected. Includes problem details, direct links, and customizable filters for categories and severity.'
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND (event.category == "AVAILABILITY")
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"]
            }}'
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                availability: true
              entityTags: {}
              customFilter: ''
              onProblemClose: false
      type: SIMPLE
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Send email notifications for problems
    
        This workflow sends email notifications when selected problems are detected, including key details such as severity and affected entities.
    
        # Setup
    
        No additional setup or connection is required to send emails from this workflow.
    
        For detailed configuration options, see [Send email action](https://dt-url.net/9022zbt).
    
        # Trigger
    
        By default, this workflow uses a problem [trigger](?trigger=) that fires when availability problems become active.
    
        To modify the trigger:
        - **Problem state**: Choose `active` to notify only when problems open or reopen, or `active or closed` to also notify when problems resolve.
        - **Event category**: Keep `Availability`, or add other categories like `Error`, `Slowdown`, `Resource`, `Custom`, `Monitoring unavailable`, or `Info`.
        - **Affected entities**: Use entity tags to limit notifications to specific services, applications, or hosts.
        - **Additional custom filter**: Refine by severity or other criteria, for example:
        ```code
          event.severity_level == "AVAILABILITY_HIGH" OR event.severity_level == "AVAILABILITY_CRITICAL"
        ```
    
        # Configure the email
    
        In the task [send_email](?task=send_email&tab=input), configure who receives the notification and what it contains.
    
        - **Recipients**:
          Update the **To** field and add one or more recipients, for example:
          ```code
          oncall@example.com, sre-team@example.com
          ```
    
        - **Subject** (recommended pattern):
          ```code
          [STATUS] Problem [ID]: [CATEGORY] [NAME]
          ```
          Or include severity:
          ```code
          [{{ event()["event.severity_level"] }}] Problem [ID]: [CATEGORY] [NAME]
          ```
    
        - **Body** (examples you can add):
          ```code
          Affected: {{ event()["affected_entity_names"] | join(", ") }}
          Severity: {{ event()["event.severity_level"] }}
          ```
      tasks:
        send_email:
          name: send_email
          input:
            cc: []
            to: []
            bcc: []
            content: '{{ event()["event.description"] }}
    
    
              Go to problem: {{ environment().url }}/ui/apps/dynatrace.davis.problems/problem/{{
              event()["event.id"] }}'
            subject: '{{ event()["event.status"] }} Problem {{ event()["display_id"] }}:
              {{ event()["event.category"] }} {{ event()["event.name"] }}'
          action: dynatrace.email:send-email
          position:
            x: 0
            y: 1
          description: Send problem alert email with event details
          predecessors: []
    EOT
  custom_id = "dynatrace.email.send-email-notifications-for-problems"
  # private = false
}
