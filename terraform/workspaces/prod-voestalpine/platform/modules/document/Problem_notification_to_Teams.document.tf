resource "dynatrace_document" "Problem_notification_to_Teams" {
  name      = "Problem notification to Teams"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2538.1
          - id: dynatrace.msteams
            version: ^2.1.5
      inputs:
        - type: connection
          schema: app:dynatrace.msteams:connection
          targets:
            - tasks.send_teams_notification.connectionId
      trackingId: problem-notifications-to-teams
    workflow:
      title: Problem notification to Microsoft Teams
      description: Sends a notification to a Teams channel when Dynatrace detects a problem.
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: false
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
        2. Create a Power Automate webhook in Microsoft Teams: Open the channel menu > **Workflows** > add **Send webhook alerts to a channel**, configure it and copy the generated webhook URL.
        3. Create a Microsoft Teams connection in Dynatrace: Go to **Settings** > **Connections** > [Microsoft Teams](/ui/apps/dynatrace.settings/settings/dynatrace.msteams) > **+ Connection**, paste the webhook URL into **Webhook URL**, and **Create**.
        4. Allow external requests: Go to **Settings** > **General** > [External requests](/ui/apps/dynatrace.settings/settings/external-requests) and ensure the webhook domain is allowed.
        5. Test and tune: Trigger a sample event or use a test payload. Adjust trigger filters, categories, and severities to match your needs. For detailed instructions, see the Microsoft Teams connector docs: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/microsoft-teams#setup
    
        # Additional configuration and tips
        - Adjust the workflow trigger filters to match the problem categories and severities you care about.
        - Test the connection by manually triggering an event or using a sample webhook payload.
        - For more examples and advanced setup, see the public Dynatrace docs for workflow connectors: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/workflows-connector-actions/
      tasks:
        send_teams_notification:
          name: send_teams_notification
          input:
            connectionId: ''
            message: |
              {
                  "type": "AdaptiveCard",
                  "$schema": "https://adaptivecards.io/schemas/adaptive-card.json",
                  "version": "1.5",
                  "body": [
                      {
                          "type": "ColumnSet",
                          "columns": [
                              {
                                  "type": "Column",
                                  "width": "55px",
                                  "items": [
                                      {
                                          "type": "Image",
                                          "altText": "Dynatrace Problem",
                                          "url": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgBAMAAAFnsVqdAAABhGlDQ1BJQ0MgcHJvZmlsZQAAKJF9kTtIw1AUhv+mig8qDu0gopChOtlFRRxrFYpQIdQKrTqY3PQFTRqSFBdHwbXg4GOx6uDirKuDqyAIPkBcXZwUXaTEc5NCixgvHO7Hf+//c+65gNCoMM3qigOabpvpZELM5lbFnlf0IUw1irDMLGNOklLwXV/3CPD9Lsaz/O/9uQbUvMWAgEgcZ4ZpE28Qz2zaBud94ggrySrxOfGESQ0SP3Jd8fiNc9FlgWdGzEx6njhCLBY7WOlgVjI14mniqKrplC9kPVY5b3HWKjXW6pO/MJTXV5a5TjWCJBaxBAkiFNRQRgU2YrTrpFhI03nCxz/s+iVyKeQqg5FjAVVokF0/+B/8nq1VmJr0kkIJoPvFcT7GgJ5doFl3nO9jx2meAMFn4Epv+6sNYPaT9Hpbix4Bg9vAxXVbU/aAyx1g6MmQTdmVglRCoQC8n9E35YDwLdC/5s2tdY7TByBDs0rdAAeHwHiRstd93t3bObd/77Tm9wNvvXKl29U4SgAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB+cJEwsVBlqqt1oAAAAkUExURQAAABkZGRkZGRgYGBgYGBkZGRkZGRkZGRkZGRkZGRkZGf///yK9Q/4AAAAKdFJOUwAFC2JjY2T6+/xn0nzHAAAAAWJLR0QLH9fEwAAAAltJREFUWMPtlr1OxDAMx42QCnSiLEhsTKyMiCdAPAFjR9QJWE5iqgRi6CMwFXG6y/kpSZqkdRK714oPCUGW1v7753w2LgAgtgCQIyIYw5g5rrWtDfZhmrFO9MNFOs5nOUAs9aNBXAHsG63URpvju+nNZgkfLuebyVkZZwsZ2mSVHWCXDm1i/953g3ddjnN4xd5waWUDkTGuaZjp2xlgR4L+3Vv2vZu4GyYAjcqt0RLBSrk3WifAjpXywWjdOHbIQD9tsNNOjeIoSaDo2GoyakXnU5OZKroGNVkdBX3bH3peAbD+QAn8RIn8veL994WbEuIyiL8Dtz66vdM8VOiOLivgDwtkHvHOiVs6V4g63+UFvaEZJ3Qb7ZX1YrHA4ABkcce138JM8EdKTY9JJviJsAn8/Wc8komezwCQB0WRatr8BqQSliRZKo944LQojrlVx0OAPYpUjGCQYWupoJFLVtAI8sJGEvAvCWQ/vu3j/EJBHG40wYYXluSyDITzoUIHworeu1QoaVEnwiq4wvVV8kgB0ktcDpJqUPpvrRHqR4yUw/fcCKUoREp6ZzRCVaNICUy75bbsBcR2y2/yy8x4kRDjBWIkniVG4xliS3xCbI2PiCjelC9y7FIizn9v3ceR+0kcjwB44ganApa4wOmAIa5wDoDP7LUyAuA/8KcB/gPaUqJm17TfDsxepdF9eJ0HbGC3mQMoXd6zZjqgukKXEhKgXGFMCAFQfSGNiYeia2dSPDsPRJTjpxAqKuzbCJX8CIwTivlxGCMU+6MhE3y8TEjxEiHHa4I5u5sw/gNAGf9B+I394QAAAABJRU5ErkJggg==",
                                          "size": "Medium"
                                      }
                                  ]
                              },
                              {
                                  "type": "Column",
                                  "width": "auto",
                                  "horizontalAlignment": "Left",
                                  "items": [
                                      {
                                          "type": "TextBlock",
                                          "text": "{{ '✅' if event()['event.status'] == 'CLOSED' else '🚨' }} {{ 'Resolved' if event()['event.status'] == 'CLOSED' else 'OPEN' }} - {{ event()['event.name']}}",
                                          "wrap": true,
                                          "style": "heading"
                                      }
                                  ]
                              }
                          ]
                      },
                      {
                          "type":"FactSet",
                          "facts":[
                            {
                                "title":"Status",
                                "value":"{{ event()['event.status'] | default('Not available.', true)  }}"
                            },
                            {
                                "title":"Category",
                                "value":"{{ event()['event.category'] | default('Not available.', true)  }}"
                            },
                            {
                                "title":"Impacted Entities",
                                "value":"{{ event()['affected_entity_ids'] | default('Not available.', true) }}"
                            },
                            {
                                "title":"Problem duration",
                                "value":"{{ (event().get('resolved_problem_duration', 0) | int) / 1000000 / 1000 / 60 }} minutes"
                            }
                          ],
                          "separator": true
                      },
                      {
                          "type": "TextBlock",
                          "text": {{ ('>' ~ event()['event.description']) | replace('\n', '\n>') | to_json }},
                          "wrap": true
                      },
                      {
                          "type": "ActionSet",
                          "actions": [
                              {
                                  "type": "Action.OpenUrl",
                                  "title": "Open in Dynatrace",
                                  "url": "{{ environment().url }}/ui/intent/dynatrace.davis.problems/view-problem#%7B%22event.id%22%3A%22{{ event()['event.id'] }}%22,%22event.kind%22%3A%22{{event()['event.kind']}}%22%7D|{{ event()['display_id'] }}"
                              }
                          ],
                          "horizontalAlignment": "Right",
                          "separator": true
                      }
                  ]
              }
          action: dynatrace.msteams:send-message
          active: true
          position:
            x: 0
            y: 1
          conditions: null
          description: Send a message to a Microsoft Teams workspace
          predecessors: []
    EOT
  custom_id = "dynatrace.msteams.problem-notifications"
  # private = false
}
