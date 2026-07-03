resource "dynatrace_document" "Create_PagerDuty_incident_from_a_Problem_Event" {
  name      = "Create PagerDuty incident from a Problem Event"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingID: 'pagerduty-create-incident'
      dependencies:
        apps:
        - id: dynatrace.pagerduty
          version: ^2.0.11-dev.20260120T090631
      inputs:
      - type: connection
        schema: app:dynatrace.pagerduty:connection
        targets:
        - tasks.create_pagerduty_incident.connectionId
    workflow:
      title: Create PagerDuty incident from a Problem Event
      description: 'This workflow creates a PagerDuty incident using the occurrence and information from a Problem Event. The data from the problem is used to define the payload for the incident.'
      schemaVersion: 3
      trigger: {}
      type: SIMPLE
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Setup
    
        1. **Configure PagerDuty connection**
          - Open the task [create_pagerduty_incident](?task=create_pagerduty_incident&tab=input)
          - Select your PagerDuty connection
          - If you don't have a connection yet, go to **Settings** > **Connections** > [PagerDuty](/ui/apps/dynatrace.settings/settings/dynatrace.pagerduty) to create one
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
    
        To automate incident creation, update the trigger to use a problem event trigger. This will automatically create PagerDuty incidents when Dynatrace detects problems.
      tasks:
        create_pagerduty_incident:
          name: create_pagerduty_incident
          input:
            from: no.reply@example.com
            title: '{{ event.event.title }}'
            details: '{{ event.event.description }}'
            serviceId: '{{ event.event.entity }}'
            incidentKey: DT_{{ event()["event.id"] }}
            connectionId: ''
          action: dynatrace.pagerduty:create-incident
          position:
            x: 0
            y: 1
          conditions: null
          description: Creates an incident for a service.
          predecessors: []
    EOT
  custom_id = "dynatrace.pagerduty.pagerduty-incident"
  # private = false
}
