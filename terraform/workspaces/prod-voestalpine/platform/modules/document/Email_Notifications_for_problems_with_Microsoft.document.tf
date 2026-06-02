resource "dynatrace_document" "Email_Notifications_for_problems_with_Microsoft" {
  name      = "Email Notifications for problems with Microsoft 365"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: send-email-for-problems-with-m365
      dependencies:
        apps:
        - id: dynatrace.microsoft365.connector
          version: ^2.5.11-dev.20260121T151657+5d064ac9
      inputs:
      - type: connection
        schema: app:dynatrace.microsoft365.connector:mail.connection
        targets:
        - tasks.send_email.connection
    workflow:
      title: Send Email Notifications for problems with Microsoft 365
      description: Send email alerts when problems are detected. Includes problem details,
        direct links, and customizable filters for categories and severity.
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND (event.category == "MONITORING_UNAVAILABLE"
            OR event.category == "AVAILABILITY" OR event.category == "ERROR" OR event.category
            == "SLOWDOWN" OR event.category == "RESOURCE_CONTENTION" OR event.category
            == "CUSTOM_ALERT" OR event.category == "INFO")
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"]
            }}'
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                info: true
                error: true
                custom: true
                resource: true
                slowdown: true
                availability: true
                monitoringUnavailable: true
              entityTags: {}
              customFilter: ''
              onProblemClose: false
      result: null
      type: SIMPLE
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Send email notifications for problems with Microsoft 365
    
        This workflow sends email notifications when selected problems are detected, including key details such as severity and affected entities.
    
        # Setup
    
        If your environment doesn't already have a Microsoft 365 connection, you'll need to create one.
        For detailed instructions, see [Set up Microsoft 365 integration](https://dt-url.net/2l42zvp).
    
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
    
        To verify your configuration, use `Query past events` to see which recent problems would have triggered this workflow.
    
        # Configure the email
    
        In the task [send_email](?task=send_email&tab=input), configure who receives the notification and what it contains.
    
        - **Recipients**:
          Update the **To** field with one or more email addresses:
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
            connection: ''
          action: dynatrace.microsoft365.connector:send-email
          position:
            x: 0
            y: 1
          description: Send problem alert email with event details
          predecessors: []
    EOT
  custom_id = "dynatrace.microsoft365.connector.send-email-notifications-for-problems-with-m365"
  # private = false
}
