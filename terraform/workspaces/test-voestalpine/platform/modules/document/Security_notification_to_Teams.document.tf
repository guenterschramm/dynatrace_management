resource "dynatrace_document" "Security_notification_to_Teams" {
  name      = "Security notification to Teams"
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
      trackingId: security-notifications-to-teams
    workflow:
      title: Security notification to Microsoft Teams
      description: Sends an Alert to Teams about newly discovered security events.
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: false
          filterQuery: |
            event.kind == "SECURITY_EVENT" AND
            event.status == "OPEN" AND
            event.status_transition == "NEW_OPEN" AND
            vulnerability.parent.mute.status == "NOT_MUTED"
          uniqueExpression: null
          triggerConfiguration:
            type: event
            value:
              query: |
                event.kind == "SECURITY_EVENT" AND
                event.status == "OPEN" AND
                event.status_transition == "NEW_OPEN" AND
                vulnerability.parent.mute.status == "NOT_MUTED"
              eventType: security.events
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
    
        # Security-specific tips
        - This template filters out muted vulnerabilities by default; keep `vulnerability.parent.mute.status == "NOT_MUTED"` to avoid noise.
        - Filter by severity or affected image to route only high-impact findings to critical channels.
        - Use tags or custom attributes to route events to the right teams or channels.
        - For troubleshooting and advanced examples, see the Dynatrace connector docs: https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/microsoft-teams#setup
      tasks:
        send_teams_notification:
          name: send_teams_notification
          input:
            connectionId: ''
            message: |
              {
                "type": "AdaptiveCard",
                "body": [
                  {
                    "type":"ColumnSet",
                    "columns":[
                      {
                          "type":"Column",
                          "items":[
                            {
                                "type":"Image",
                                "style":"default",
                                "url":"https://dt-cdn.net/images/appsec-logo-with-bg-and-rounded-corners-200-8253a2bc6e.png",
                                "size":"small"
                            }
                          ],
                          "width":"auto"
                      },
                      {
                          "type":"Column",
                          "items":[
                            {
                                "type":"TextBlock",
                                "size":"medium",
                                "weight":"bolder",
                                "text":"Security notification"
                            }
                          ],
                          "width":"stretch"
                      }
                    ]
                  },
              {# Remove vulnerability type if 'Not available' #}
              {% set vuln_tp_ori = event()['vulnerability.type'] | default('') %}
              {% set vuln_tp = '' %}
              {% if vuln_tp_ori and vuln_tp_ori != 'Not available' %}
              {% set vuln_tp = ' ' + vuln_tp_ori %}
              {% endif %}
                  {
                    "type": "TextBlock",
              {% if event()['vulnerability.technology'] | default(false) or vuln_tp | default(false) %}
                    "text": "{{ event()['vulnerability.technology'] | default('') }}{{ vuln_tp }} vulnerability detected",
              {% else %}
                    "text": "Not available.",
              {% endif %}
                    "wrap": true,
                    "separator": true
                  },
                  {
                    "type": "FactSet",
                    "facts": [
                      {
                        "title": "Name",
              {% if event()['vulnerability.display_id'] | default(false) or event()['vulnerability.title'] | default(false) %}
                        "value": "{{ event()['vulnerability.display_id'] | default('') }} {{ event()['vulnerability.title'] | default('') }}"
              {% else %}
                        "value": "Not available."
              {% endif %}
                      },
                      {
                        "title": "Status",
              {% if event()['event.status'] | default(false) %}
                        "value": "{% for e in event()['event.status'] %}{%- if loop.index == 1 -%}{{- e | upper -}}{%- else -%}{{- e | lower -}}{%- endif -%}{% endfor %}"
              {% else %}
                        "value": "Not available."
              {% endif %}
                      },
              {% set risk_score = '%0.1f'| format(event()['vulnerability.risk.score']|float) if event()['vulnerability.risk.score'] | default(false) else false %}
                      {
                        "title": "Risk level",
              {% if event()['vulnerability.risk.level'] | default(false) and risk_score %}
                        "value": "{% for e in event()['vulnerability.risk.level'] %}{%- if loop.index == 1 -%}{{- e | upper -}}{%- else -%}{{- e | lower -}}{%- endif -%}{% endfor %} ({{ risk_score }})"
              {% elif risk_score %}
                        "value": "{{ risk_score }}"
              {% elif event()['vulnerability.risk.level'] | default(false) %}
                        "value": "{% for e in event()['vulnerability.risk.level'] %}{%- if loop.index == 1 -%}{{- e | upper -}}{%- else -%}{{- e | lower -}}{%- endif -%}{% endfor %}"
              {% else %}
                        "value": "Not available."
              {% endif %}
                      },
              {# Identify internet exposure #}
              {% set exp_st_ori = event()['vulnerability.davis_assessment.exposure_status'] | default('') %}
              {% set exp_st = 'Cannot assess internet exposure.' %}
              {% if 'PUBLIC_NETWORK' == exp_st_ori %}
              {% set exp_st = 'Public internet exposure.' %}
              {% elif 'NOT_DETECTED' == exp_st_ori %}
              {% set exp_st = 'No public internet exposure.' %}
              {% endif %}
              {# Identify vulnerable function #}
              {% set vul_fn_ori = event()['vulnerability.davis_assessment.vulnerable_function_status'] | default('') %}
              {% set vul_fn = 'Cannot assess vulnerable functions.' %}
              {% if 'IN_USE' == vul_fn_ori %}
              {% set vul_fn = 'Vulnerable functions in use.' %}
              {% elif 'NOT_IN_USE' == vul_fn_ori %}
              {% set vul_fn = 'No vulnerable functions in use.' %}
              {% endif %}
              {# Identify public exploit #}
              {% set pub_exp_ori = event()['vulnerability.davis_assessment.exploit_status'] | default('') %}
              {% set pub_exp = 'Cannot assess exploit status.' %}
              {% if 'AVAILABLE' == pub_exp_ori %}
              {% set pub_exp = 'Public exploit published.' %}
              {% elif 'NOT_AVAILABLE' == pub_exp_ori %}
              {% set pub_exp = 'No public exploit published.' %}
              {% endif %}
              {# Identify data asset #}
              {% set data_ass_ori = event()['vulnerability.davis_assessment.data_assets_status'] | default('') %}
              {% set data_ass = 'Cannot assess data assets.' %}
              {% if 'REACHABLE' == data_ass_ori %}
              {% set data_ass = 'Reachable data assets.' %}
              {% elif 'NOT_DETECTED' == data_ass_ori %}
              {% set data_ass = 'No reachable data assets.' %}
              {% endif %}
                      {
                        "title": "Risk assessment",
                        "value": "{{ exp_st }}\n\n{{ vul_fn }}\n\n{{ pub_exp }}\n\n{{ data_ass }}"
                      }
                    ]
                  }
              {% if event()['vulnerability.url'] | default(false) %}
                  ,{
                    "type": "ActionSet",
                    "actions": [
                        {
                            "type": "Action.OpenUrl",
                            "title": "Open in Dynatrace",
                            "url": "{{ event()['vulnerability.url'] }}"
                        }
                    ],
                    "separator": true,
                    "horizontalAlignment": "Right"
                  }
              {% endif %}
                ],
                "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
                "version": "1.4"
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
  custom_id = "dynatrace.msteams.security-notifications"
  # private = false
}
