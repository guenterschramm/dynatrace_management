resource "dynatrace_document" "Add_monitoring_labels_to_resources" {
  name      = "Add monitoring labels to resources"
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
          - id: dynatrace.slack
            version: ^3.2.2
    
      inputs:
        - type: connection
          schema: app:dynatrace.kubernetes.connector:connection
          targets:
            - tasks.add_labels.connection
            - tasks.list_resources.connection
    
        - type: connection
          schema: app:dynatrace.slack:connection
          targets:
            - tasks.send_summary.connection
      trackingId: add-monitoring-labels-to-pods
    workflow:
      title: Add monitoring labels to pods
      description: >-
        Automatically adds standardized monitoring and governance labels to
        Kubernetes pods for better observability and compliance.
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: false
          filterQuery: >-
            event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND dt.analysis.ready == false AND
            (event.category == "RESOURCE_CONTENTION")
          uniqueExpression: >-
            {{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"] }}
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                resource: true
              entityTags: {}
              customFilter: ''
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
    
        **Slack connection**: See https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/slack for detailed setup instructions.
    
        Ensure the Kubernetes connection has `list` and `patch` permissions for pods in the target namespace.
    
        # Trigger
    
        The Davis problem [trigger](?trigger) is inactive by default and filters for resource contention problems.
    
        To modify the trigger:
        - **Filter by category**: Update **Event category** to match your monitoring needs
        - **Custom filters**: Add DQL filters in **Additional custom filter** to limit to specific entities or conditions
    
        # Find resources missing labels
    
        In the [list_resources](?task=list_resources&tab=input) task, configure which pods to label:
    
        - **Namespace**: Specify the namespace to search
        - **Label selector**: Default is `!team` to find pods without a team label. Use `!team,!environment` to find pods missing multiple labels
    
        # Add standardized labels
    
        In the [add_labels](?task=add_labels&tab=input) task, update the **Patch** field with your organization's standard labels:
    
        ```json
        {
          "metadata": {
            "labels": {
              "team": "platform-team",
              "environment": "production",
              "cost-center": "engineering",
              "monitored-by": "dynatrace",
              "owner": "team-email@example.com"
            }
          }
        }
        ```
    
        Coordinate with your organization's labeling standards before adding labels.
    
        # Send summary notification
    
        In the [send_summary](?task=send_summary&tab=input) task, select the Slack channel where the labeling summary will be sent.
    
        # Best Practices
    
        Labels added by this workflow may be overwritten on next deployment if not added to source manifests. Update your deployment manifests to include these labels for persistence.
      tasks:
        list_resources:
          name: list_resources
          description: Find resources missing required labels
          action: dynatrace.kubernetes.connector:list-resources
          position:
            x: 0
            y: 1
          predecessors: []
          input:
            connection: ''
            namespace: ''
            resourceType:
              kind: Pod
              name: pods
              apiVersion: v1
              namespaced: true
              verbs:
                - create
                - delete
                - deletecollection
                - get
                - list
                - patch
                - update
                - watch
            fieldSelector: ''
            labelSelector: '!team'
    
        add_labels:
          name: add_labels
          description: Add standardized monitoring labels
          action: dynatrace.kubernetes.connector:patch-resource
          position:
            x: 0
            y: 2
          predecessors:
            - list_resources
          conditions:
            states:
              list_resources: OK
            custom: '{{ result("list_resources")["items"] | length > 0 }}'
          withItems: item in {{ result("list_resources")["items"] }}
          concurrency: 1
          input:
            connection: ''
            namespace: '{{ _.item.metadata.namespace }}'
            name: '{{ _.item.metadata.name }}'
            resourceType: '{{ task("list_resources")["input"]["resourceType"] }}'
            patch_type: strategic
            strategy: strategic
            patch: |
              {
                "metadata": {
                  "labels": {
                    "team": "platform-team",
                    "environment": "production",
                    "monitored-by": "dynatrace"
                  }
                }
              }
    
        send_summary:
          name: send_summary
          description: Send Slack summary of labeling operation
          action: dynatrace.slack:slack-send-message
          position:
            x: 0
            y: 3
          predecessors:
            - add_labels
          conditions:
            states:
              add_labels: OK
          input:
            connection: ''
            appendToThread: false
            message: |
              {
                "blocks": [
                  {
                    "type": "header",
                    "text": {
                      "type": "plain_text",
                      "text": "🏷️ Monitoring Labels Added"
                    }
                  },
                  {
                    "type": "section",
                    "fields": [
                      {
                        "type": "mrkdwn",
                        "text": "*Resource Type:*\n{{ task('list_resources').input.resourceType }}"
                      },
                      {
                        "type": "mrkdwn",
                        "text": "*Namespace:*\n{{ task('list_resources').input.namespace or 'All namespaces' }}"
                      },
                      {
                        "type": "mrkdwn",
                        "text": "*Resources Labeled:*\n{{ result('list_resources')['items'] | length }}"
                      },
                      {
                        "type": "mrkdwn",
                        "text": "*Execution Time:*\n{{ execution().started_at }}"
                      }
                    ]
                  },
                  {
                    "type": "divider"
                  },
                  {
                    "type": "section",
                    "text": {
                      "type": "mrkdwn",
                      "text": "The following resources have been labeled for monitoring and governance:"
                    }
                  },
                  {
                    "type": "section",
                    "text": {
                      "type": "mrkdwn",
                      "text": "{% for resource in result('list_resources')['items'] %}\n• *{{ resource.metadata.name }}* · `{{ resource.metadata.namespace }}`\n{% endfor %}"
                    }
                  },
                  {
                    "type": "context",
                    "elements": [
                      {
                        "type": "mrkdwn",
                        "text": "💡 Tip: Update source manifests to persist labels across deployments"
                      }
                    ]
                  }
                ]
              }
    EOT
  custom_id = "dynatrace.kubernetes.connector.add-monitoring-labels"
  # private = false
}
