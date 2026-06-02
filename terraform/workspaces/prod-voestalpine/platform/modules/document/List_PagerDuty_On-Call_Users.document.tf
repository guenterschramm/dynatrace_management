resource "dynatrace_document" "List_PagerDuty_On-Call_Users" {
  name      = "List PagerDuty On-Call Users"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingID: 'pagerduty-list-on-call'
      dependencies:
        apps:
        - id: dynatrace.pagerduty
          version: ^2.0.11-dev.20260120T090631
      inputs:
      - type: connection
        schema: app:dynatrace.pagerduty:connection
        targets:
        - tasks.list_on-calls.connectionId
    workflow:
      title: List PagerDuty On-Call Users
      description: 'This workflow retrieves a list of users that are currently on call in PagerDuty.'
      schemaVersion: 3
      trigger: {}
      type: SIMPLE
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Setup
    
        **Configure PagerDuty connection**
    
        1. In the task [list_on-calls](?task=list_on-calls&tab=input), select the PagerDuty connection you want to use.
        2. If your environment doesn't already have a PagerDuty connection, you'll need to create one. Go to **Settings** > **Connections** > [PagerDuty](/ui/apps/dynatrace.settings/settings/dynatrace.pagerduty) to set up a new connection.
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
    
        You can update the trigger to run on a schedule (for example, daily or weekly at a specific time) or configure it to trigger on specific events based on your operational needs.
      tasks:
        list_on-calls:
          name: list_on-calls
          input:
            limit: '100'
            offset: '0'
            connectionId: ''
          action: dynatrace.pagerduty:list-on-calls
          position:
            x: 0
            y: 1
          conditions: null
          description: Retrieves a list of users that are on call.
          predecessors: []
    EOT
  custom_id = "dynatrace.pagerduty.list-on-call"
  # private = false
}
