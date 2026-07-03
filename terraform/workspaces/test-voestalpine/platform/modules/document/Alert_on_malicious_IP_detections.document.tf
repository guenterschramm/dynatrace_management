resource "dynatrace_document" "Alert_on_malicious_IP_detections" {
  name      = "Alert on malicious IP detections"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
        - id: dynatrace.security.enrichment
          version: ^1.0.0
        - id: dynatrace.slack
          version: ^3.4.0
      inputs:
      - type: connection
        schema: builtin:security-enrichment.connections
        targets:
        - tasks.enrich_observable.connectionId
    workflow:
      title: '[Security Enrichment] Alert on malicious IP detections'
      description: ''
      schemaVersion: 4
      trigger:
        eventTrigger:
          isActive: true
          triggerConfiguration:
            type: event
            value:
              query: |
                event.kind == "SECURITY_EVENT"
                AND event.type == "DETECTION_FINDING"
                AND dt.security.risk.level == "CRITICAL"
                AND isNotNull(actor.ips)
                AND isNotNull(event.provider)
              eventType: security.events
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: null
      tasks:
        enrich_observable:
          name: enrich_observable
          input:
            observable:
              type: ip-addr
              value: '{{_.ip_address}}'
            connectionId: ''
          action: dynatrace.security.enrichment:enrich-observable
          active: true
          position:
            x: 0
            y: 1
          conditions:
            else: STOP
            custom: ''
            states: {}
          withItems: ip_address in {{ event()["actor.ips"] }}
          concurrency: 1
          description: Enrich an observable with threat intelligence
          predecessors: []
        notify_if_malicious:
          name: notify_if_malicious
          input:
            channel: C099TLRU7DM
            message: |
              {
                  "blocks": [
                      {
                          "type": "header",
                          "text": {
                              "type": "plain_text",
                              "text": "Critical detection finding with malicious actor IP reported by {{ event()["event.provider"] }}!",
                              "emoji": true
                          }
                      },
                      {
                          "type": "divider"
                      },
                      {
                          "type": "section",
                          "text": {
                              "type": "mrkdwn",
                              "text": "Critical detection finding originating from {% for item in result("enrich_observable") %}{% if not loop.last %}`{{ item["geo.country.iso_code"] }}`,{% else %}`{{ item["geo.country.iso_code"] }}`{% endif %}{% endfor %} .\nInvolving IPs: {% for ip in event()["actor.ips"] %}{% if not loop.last %}`{{ ip }}`,{% else %}`{{ ip }}`{% endif %}{% endfor %} ."
                          },
                          "accessory": {
                              "type": "image",
                              "image_url": "https://dt-cdn.net/images/appsec-logo-with-bg-and-rounded-corners-200-8253a2bc6e.png",
                              "alt_text": "Dynatrace Application Security"
                          }
                      },
                      {
                          "type": "divider"
                      },
                      {
                          "type": "rich_text",
                          "elements": [
                              {
                                  "type": "rich_text_section",
                                  "elements": [
                                      {
                                          "type": "text",
                                          "text": "Details:"
                                      }
                                  ]
                              },
                              {
                                  "type": "rich_text_list",
                                  "style": "bullet",
                                  "elements": [
                                      {
                                          "type": "rich_text_section",
                                          "elements": [
                                              {
                                                  "type": "text",
                                                  "text": "Time : "
                                              },
                                              {
                                                  "type": "text",
                                                  "text": "{{ event()["finding.time.created"] }}"
                                              }
                                          ]
                                      },
                                      {
                                          "type": "rich_text_section",
                                          "elements": [
                                              {
                                                  "type": "text",
                                                  "text": "Title : "
                                              },
                                              {
                                                  "type": "text",
                                                  "text": "{{ event()["finding.title"] }}"
                                              }
                                          ]
                                      },
                                      {
                                          "type": "rich_text_section",
                                          "elements": [
                                              {
                                                  "type": "text",
                                                  "text": "Affected element : "
                                              },
                                              {
                                                  "type": "text",
                                                  "text": "{{ event()["object.name"] }}"
                                              }
                                          ]
                                      }
                                  ]
                              }
                          ]
                      },
                      {
                          "type": "divider"
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
            y: 2
          conditions:
            custom: |
              {% set ns = namespace(malicious_ip_found=false) %}
              {% for item in result("enrich_observable") if item["reputation.level"] == "Malicious" %}
                {% set ns.malicious_ip_found = true %}
              {% endfor %}
              {{ ns.malicious_ip_found}}
            states:
              enrich_observable: OK
          description: Send a message to a Slack workspace
          predecessors:
          - enrich_observable
    EOT
  custom_id = "dynatrace.security.enrichment.alert-on-malicious-ip-detections"
  # private = false
}
