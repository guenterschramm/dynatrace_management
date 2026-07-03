resource "dynatrace_document" "Send_pod_logs_to_Microsoft_Teams" {
  name      = "Send pod logs to Microsoft Teams"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2538.1
          - id: dynatrace.kubernetes.connector
            version: ^1.1.0
          - id: dynatrace.msteams
            version: ^2.2.0
      inputs:
        - type: connection
          schema: app:dynatrace.kubernetes.connector:connection
          targets:
            - tasks.get_pod_logs.connection
        - type: connection
          schema: app:dynatrace.msteams:connection
          targets:
            - tasks.send_logs_to_teams.connectionId
      trackingId: send-pod-logs-to-teams
    workflow:
      title: Send pod logs to Microsoft Teams
      description: >-
        Retrieves logs from a Kubernetes pod and sends them to a Microsoft Teams
        channel for monitoring and troubleshooting.
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: false
          filterQuery: >-
            event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND (event.category == "ERROR"
            OR event.category == "AVAILABILITY")
            AND (matchesValue(k8s.workload.kind, "pod"))
          uniqueExpression: >-
            {{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"] }}
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                availability: true
              entityTags: {}
              customFilter: matchesValue(k8s.workload.kind, "pod")
              analysisReady: false
              onProblemClose: false
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Setup
    
        This workflow requires two connections:
    
        **Kubernetes connection**: See https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/kubernetes-automation/get-started-with-kubernetes-workflows for detailed setup instructions.
    
        **Microsoft Teams connection**: See https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/microsoft-teams for detailed setup instructions.
    
        Ensure the Kubernetes connection has `get` permissions for pods in the target namespace.
    
        # Trigger
    
        The Davis problem [trigger](?trigger) is inactive by default and filters for error and availability problems.
    
        To modify the trigger:
        - **Filter by category**: Update **Event category** to match your monitoring needs
        - **Custom filters**: Add DQL filters in **Additional custom filter** to limit to specific entities or conditions
    
        # Retrieve pod logs
    
        In the [get_pod_logs](?task=get_pod_logs&tab=input) task, configure which logs to retrieve:
    
        - **Namespace**: Specify the namespace of the pod
        - **Pod**: Specify the pod name
        - **Container**: Leave empty for the default container, or specify a container name for multi-container pods
        - **Timeframe**: Specify seconds to retrieve (e.g., `300` for last 5 minutes). Leave empty to retrieve all available logs
    
        Logs are limited to 6MB. Use **Timeframe** to control output size.
    
        # Send logs to Teams
    
        In the [send_logs_to_teams](?task=send_logs_to_teams&tab=input) task, select the Microsoft Teams connection where the logs will be sent.
    
        The message displays pod details and log content. Logs are truncated to 4000 characters for display in the Teams message.
      tasks:
        get_pod_logs:
          name: get_pod_logs
          description: Retrieve logs from Kubernetes pod
          action: dynatrace.kubernetes.connector:get-logs
          position:
            x: 0
            y: 1
          predecessors: []
          input:
            connection: ''
            namespace: ''
            pod: ''
            container: ''
            sinceSeconds: null
    
        send_logs_to_teams:
          name: send_logs_to_teams
          description: Send pod logs to Microsoft Teams channel
          action: dynatrace.msteams:send-message
          position:
            x: 0
            y: 2
          predecessors:
            - get_pod_logs
          conditions:
            states:
              get_pod_logs: OK
          input:
            connectionId: ''
            channel: ''
            message: |
              {
                "type": "AdaptiveCard",
                "$schema": "https://adaptivecards.io/schemas/adaptive-card.json",
                "version": "1.6",
                "body": [
                    {
                        "type": "ColumnSet",
                        "columns": [
                            {
                                "type": "Column",
                                "width": "auto",
                                "horizontalAlignment": "Left",
                                "items": [
                                    {
                                        "type": "TextBlock",
                                        "text": "📋 Kubernetes Pod Logs Retrieved",
                                        "wrap": true,
                                        "style": "heading"
                                    }
                                ]
                            }
                        ]
                    },
                    {
                        "type": "FactSet",
                        "facts": [
                            {
                                "title": "Pod",
                                "value": "{{ task('get_pod_logs').input.pod or 'Not configured' }}"
                            },
                            {
                                "title": "Namespace",
                                "value": "{{ task('get_pod_logs').input.namespace or 'Not configured' }}"
                            },
                            {
                                "title": "Container",
                                "value": "{{ task('get_pod_logs').input.container or 'default' }}"
                            },
                            {
                                "title": "Total Lines Retrieved",
                                "value": "{{ result('get_pod_logs') | length }}"
                            },
                            {
                                "title": "Execution Time",
                                "value": "{{ execution().started_at }}"
                            }
                        ],
                        "separator": true
                    },
                    {
                        "type": "Container",
                        "items": [
                            {
                                "type": "RichTextBlock",
                                "inlines": [
                                    {
                                        "type": "TextRun",
                                        "fontType": "Monospace",
                                        "size": "Small",
                                        "text": {{ result('get_pod_logs') | truncate(4000) | to_json }}
                                    }
                                ]
                            }
                        ],
                        "style": "emphasis"
                    },
                    {
                        "type": "TextBlock",
                        "text": "Note: Logs are truncated to 4000 characters for display.",
                        "size": "Small",
                        "isSubtle": true,
                        "wrap": true,
                        "spacing": "Small",
                        "separator": true
                    }{% if problem_link() %},
                    {
                        "type": "ActionSet",
                        "actions": [
                            {
                                "type": "Action.OpenUrl",
                                "title": "Open Problem in Dynatrace",
                                "url": "{{ problem_link() }}"
                            }
                        ]
                    }{% endif %}
                ]
              }
    EOT
  custom_id = "dynatrace.kubernetes.connector.send-pod-logs-to-teams"
  # private = false
}
