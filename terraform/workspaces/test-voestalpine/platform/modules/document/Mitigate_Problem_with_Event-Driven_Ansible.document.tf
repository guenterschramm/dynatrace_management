resource "dynatrace_document" "Mitigate_Problem_with_Event-Driven_Ansible" {
  name      = "Mitigate Problem with Event-Driven Ansible"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingID: 'mitigate-problem-with-eda'
      dependencies:
        apps:
        - id: dynatrace.automations
          version: ^1.2632.0
        - id: dynatrace.redhat.ansible
          version: ^2.1.7
        - id: dynatrace.slack
          version: ^3.2.4
      inputs:
      - type: connection
        schema: app:dynatrace.redhat.ansible:eda-webhook.connection
        targets:
        - tasks.mitigate_with_event_driven_ansible.connectionId
      - type: connection
        schema: app:dynatrace.slack:connection
        targets:
        - tasks.send_slack_notification.connection
    workflow:
      title: Mitigate Dynatrace Problem with RH Event Driven Ansible
      description: 'This workflow template demonstrates how to trigger a rulebook in Red Hat Event-Driven Ansible (EDA) from Dynatrace workflows.'
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Setup
    
        You need to setup a connection the Red Hat Ansible Automation Controller. 
        For details on how to configure the connection, see [Red Hat Ansible connection](https://dt-url.net/a303xin).
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
        You can update the trigger to run on a schedule (for example, daily or weekly at a specific time).   
    
        # Configure the message
    
        Select the channel: 
        In the task [send_slack_notification](?task=send_slack_notification&tab=input), you must specify to which channel the Slack-message will be sent to.
        You can also update the message: The message will contain a short description of the problem with a link to the Problem app for further analysis.
    
        # Configure the event data for mitigation
    
        The task [mitigate_with_event_driven_ansible](?task=mitigate_with_event_driven_ansible&tab=input) is configured to send a custom event to the Red Hat EDA Controller. 
        The event data is defined in the `Event data` field of the task input. Update the event data to match the expected input 
        of your EDA rulebook. For example, you can use data from a triggering problem event, or create a custom event 
        with specific properties.
    
      tasks:
        send_slack_notification:
          name: send_slack_notification
          input:
            channel: C080F2TKR1D
            message: "{\n\t\"blocks\": [\n\t\t{\n\t\t\t\"type\": \"section\",\n\t\t\t\"\
              text\": {\n\t\t\t\t\"type\": \"mrkdwn\",\n\t\t\t\t\"text\": \"Dynatrace\
              \ AutomationEngine :dt: \\n\\nA problem has been detected in your Dynatrace\
              \ environment. Dynatrace has identified affected entity(s) and wil\
              \ automatically trigger a remediation.\\n\\n\\nStatus: *REMEDIATION TRIGGERED\
              \ WITH RED HAT EVENT DRIVEN ANSIBLE *\"\n\t\t\t}\n\t\t},\n\t\t{\n\t\t\t\"\
              type\": \"actions\",\n\t\t\t\"elements\": [\n\t\t\t\t{\n\t\t\t\t\t\"type\"\
              : \"button\",\n\t\t\t\t\t\"text\": {\n\t\t\t\t\t\t\"type\": \"plain_text\"\
              ,\n\t\t\t\t\t\t\"text\": \"View remediation workflow\"\n\t\t\t\t\t},\n\t\
              \t\t\t\t\"value\": \"rem_wf_link\",\n\t\t\t\t\t\"url\": \"{{ environment().url\
              \ }}/ui/apps/dynatrace.automations/executions/{{ execution().id }}\"\n\t\t\
              \t\t}\n\t\t\t]\n\t\t}\n\t]\n}"
            reaction: []
            connection: ''
            workflowID: '{{ execution().workflow.id }}'
            channelType: id
            executionID: '{{ execution().id }}'
            executionDate: '{{ execution().started_at }}'
            appendToThread: false
            replyBroadcast: false
            selectedRequestType: 0
            attachmentToggleValue: none
          action: dynatrace.slack:slack-send-message
          active: true
          position:
            x: 0
            y: 2
          description: Send a message to a Slack workspace
          predecessors: []
        mitigate_with_event_driven_ansible:
          name: mitigate_with_event_driven_ansible
          input:
            eventData: "{\n    \"affected_entity_ids\": [\"KUBERNETES_CLUSTER-123456789\"\
              ],\n    \"event.category\": \"AVAILABILITY\",\n    \"event.name\": \"Monitoring\
              \ not available\",\n    \"event.status\": \"ACTIVE\"\n}"
            connectionId: ''
          action: dynatrace.redhat.ansible:send-event-to-eda
          active: true
          position:
            x: 0
            y: 1
          conditions:
            states: {}
          description: Send an event to the Red Hat Event-Driven-Ansible Controller via
            Event Source Plugin
          predecessors: []
    EOT
  custom_id = "dynatrace.redhat.ansible.mitigate-problem-with-event-driven-ansible"
  # private = false
}
