resource "dynatrace_document" "Delete_pods_stuck_in_termination" {
  name      = "Delete pods stuck in termination"
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
            - tasks.list_terminating_pods.connection
            - tasks.delete_terminating_pods.connection
        - type: connection
          schema: app:dynatrace.slack:connection
          targets:
            - tasks.send_alert.connection
      trackingId: delete-pods-stuck-in-termination
    workflow:
      title: Delete pods stuck in terminating state
      description: |
        Automatically force deletes Kubernetes pods stuck in terminating state
        due to finalizers, volume issues, or orphaned processes.
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: false
          filterQuery: |
            event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND dt.analysis.ready == false AND
            (event.category == "RESOURCE_CONTENTION")
          uniqueExpression: |
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
    
        Ensure the Kubernetes connection has `list` and `delete` permissions for pods in the target namespace.
    
        # Trigger
    
        The Davis problem [trigger](?trigger) is inactive by default and filters for resource contention problems.
    
        To modify the trigger:
        - **Filter by category**: Update **Event category** to match your monitoring needs
        - **Custom filters**: Add DQL filters in **Additional custom filter** to limit to specific entities or conditions
    
        # Find terminating pods
    
        In the [list_terminating_pods](?task=list_terminating_pods&tab=input) task, configure which pods to find:
    
        - **Namespace**: Specify the namespace to search
        - **Field selector**: Default is `status.phase=Terminating` to find stuck pods
    
        # Delete terminating pods
    
        In the [delete_terminating_pods](?task=delete_terminating_pods&tab=input) task, **Forcefully delete resources** is enabled by default to bypass graceful shutdown. This bypasses graceful shutdown and may leave orphaned resources or unsaved state. Use with caution.
    
        # Send alert notification
    
        In the [send_alert](?task=send_alert&tab=input) task, select the Slack channel where the deletion alert will be sent.
      tasks:
        send_alert:
          name: send_alert
          input:
            channel: ''
            message: |
              {
                "blocks": [
                  {
                    "type": "header",
                    "text": {
                      "type": "plain_text",
                      "text": "⚠️ Kubernetes Pods Force Deleted"
                    }
                  },
                  {
                    "type": "section",
                    "fields": [
                      {
                        "type": "mrkdwn",
                        "text": "*Namespace:*\n{{ task('list_terminating_pods').input.namespace }}"
                      },
                      {
                        "type": "mrkdwn",
                        "text": "*Pods Deleted:*\n{{ result('list_terminating_pods')['items'] | length }}"
                      },
                      {
                        "type": "mrkdwn",
                        "text": "*Action Taken:*\nForce deleted"
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
                      "text": "The following pods were stuck in terminating state and have been force deleted:"
                    }
                  },
                  {
                    "type": "section",
                    "text": {
                      "type": "mrkdwn",
                      "text": "{% for pod in result('list_terminating_pods')['items'] %}\n• *{{ pod.metadata.name }}* · `{{ pod.metadata.namespace }}`\n{% endfor %}"
                    }
                  }
                ]
              }
            connection: ''
            appendToThread: false
          action: dynatrace.slack:slack-send-message
          position:
            x: 0
            y: 3
          conditions:
            states:
              delete_terminating_pods: OK
          description: Send a Slack notification about deleted pods
          predecessors:
            - delete_terminating_pods
        list_terminating_pods:
          name: list_terminating_pods
          input:
            namespace: ''
            connection: ''
            resourceType:
              kind: Pod
              name: pods
              verbs:
                - create
                - delete
                - deletecollection
                - get
                - list
                - patch
                - update
                - watch
              apiVersion: v1
              namespaced: true
            fieldSelector: status.phase=Terminating
            labelSelector: ''
          action: dynatrace.kubernetes.connector:list-resources
          position:
            x: 0
            y: 1
          description: Find pods stuck in terminating state
          predecessors: []
        delete_terminating_pods:
          name: delete_terminating_pods
          with:
            item: terminating_pod
            items: '{{ result("list_terminating_pods")["items"] }}'
          input:
            force: true
            resource:
              name: '{{ _.item.metadata.name }}'
              type: '{{ task("list_terminating_pods").input.resourceType }}'
              namespace: '{{ task("list_terminating_pods").input.namespace }}'
            namespace: '{{ task("list_terminating_pods").input.namespace }}'
            connection: ''
            grace_period: 0
          action: dynatrace.kubernetes.connector:delete
          position:
            x: 0
            y: 2
          conditions:
            custom: '{{ result("list_terminating_pods")["items"] | length > 0 }}'
            states:
              list_terminating_pods: OK
          withItems: item in {{ result("list_terminating_pods")["items"] }}
          concurrency: 1
          description: Force delete pods stuck in terminating state
          predecessors:
            - list_terminating_pods
    EOT
  custom_id = "dynatrace.kubernetes.connector.delete-pods-stuck-in-termination"
  # private = false
}
