resource "dynatrace_document" "Send_Problem_notification_to_Slack" {
  name      = "Send Problem notification to Slack"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
        - id: dynatrace.automations
          version: ^1.2538.1
        - id: dynatrace.slack
          version: ^3.2.2
      inputs:
      - type: connection
        schema: app:dynatrace.slack:connection
        targets:
        - tasks.send_slack_notification.connection
      trackingId: problem-notifications-to-slack
    workflow:
      title: Problem notification to Slack
      description: Sends a notification to a Slack channel when Dynatrace opens a problem.
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: |
            event.kind == "DAVIS_PROBLEM" AND
            event.status == "ACTIVE" AND (
              event.status_transition == "CREATED" OR
              event.status_transition == "UPDATED" OR
              event.status_transition == "REOPENED"
            )
          uniqueExpression: |
            {{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"] in ("CREATED", "UPDATED", "REOPENED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"] }}
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                availability: true
              entityTags: {}
              customFilter: ''
              onProblemClose: false
      result: null
      type: SIMPLE
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Quick setup
        Follow these core steps to get the workflow running; use the linked docs for full details.
    
        1. Grant Workflow permissions: Go to [Workflows](/ui/apps/dynatrace.automations) > **Settings** > [Authorization settings](/ui/apps/dynatrace.automations/settings) and enable required permissions for running actions and reading events. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/security#user-permission
        2. Create a Slack app: Go to [Slack API](https://api.slack.com/apps), create a new app, add necessary bot scopes (e.g., chat:write, channels:read), install it to your workspace, and copy the bot token. See: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/slack#slack-app
        3. Create a Slack connection in Dynatrace: Go to **Settings** > **Connections** > [Slack](/ui/apps/dynatrace.settings/settings/dynatrace.slack) > **+ Connection**, paste the bot token into **Bot Token**, and **Create**.
        4. Allow external requests: Go to **Settings** > **General** > [External requests](/ui/apps/dynatrace.settings/settings/external-requests) and ensure slack.com is allowed.
        5. Set a channel: In the [send_slack_notification](?task=send_slack_notification&tab=input) task, set the `Channel` to the desired Slack channel name (e.g., `#problem-alerts`).
        6. Test and tune: Trigger a sample event or use a test payload. Adjust trigger filters, categories, and severities to match your needs. For detailed instructions, see the Slack connector docs: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/slack#setup
    
        # Additional configuration and tips
        - Adjust the workflow trigger filters to match the problem categories and severities you care about.
        - Test the connection by manually triggering an event or using a sample webhook payload.
        - For more examples and advanced setup, see the public Dynatrace docs for workflow connectors: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/workflows-connector-actions/
      tasks:
        send_slack_notification:
          name: send_slack_notification
          input:
            channel: ''
            message: |
              {
              "blocks": [
              {
                "type": "header",
                "text": {
                  "type": "plain_text",
                  "text": "{{ ':white_check_mark:' if event()['event.status'] == 'CLOSED' else ':warning:' }} {{ 'RESOLVED' if event()['event.status'] == 'CLOSED' else 'OPEN' }} - {{ event()['event.name']}}",
                  "emoji": true
                }
              },
              {
                "type": "section",
                "text": {
                  "type": "mrkdwn",
                  "text": "- *Problem link*: <{{ environment().url }}/ui/intent/dynatrace.davis.problems/view-problem#%7B%22event.id%22%3A%22{{ event()['event.id'] }}%22,%22event.kind%22%3A%22{{event()['event.kind']}}%22%7D|{{ event()['display_id'] }}> \n- *Impacted Entities:* `{{ event()['affected_entity_ids'] }}`\n- *Problem duration:* `{{ (event().get('resolved_problem_duration', 0) | int) / 1000000 / 1000 / 60 }} minutes`"
                }
              },
              {
                "type": "section",
                "text": {
                  "type": "mrkdwn",
                  "text": {{ ('>' ~ event()['event.description']) | replace('\n', '\n>') | to_json }}
                }
              },
              {
                "type": "divider"
              },
              {
                "type": "section",
                "text": {
                  "type": "mrkdwn",
                  "text": "*Workflow link*: <{{ environment().url }}/ui/apps/dynatrace.automations/workflows/{{ execution().workflow.id }}|Workflow>"
                }
              }
              ]
              }
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
            y: 1
          conditions: null
          description: Send a message to a Slack workspace
          predecessors: []
    EOT
  custom_id = "dynatrace.slack.problem-notifications"
  # private = false
}
