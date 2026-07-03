resource "dynatrace_document" "Auto-Annotate_K8s_Pods_based_on_Problem_Events" {
  name      = "Auto-Annotate K8s Pods based on Problem Events"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: ca42322c-70c6-4852-a032-56bacc52f6f3
      dependencies:
        apps:
          - id: dynatrace.automations
            version: ^1.2781.0
          - id: dynatrace.kubernetes.connector
            version: ^1.1.0
      inputs:
        - type: connection
          schema: app:dynatrace.kubernetes.connector:connection
          targets:
            - tasks.patch_pods.connection
    workflow:
      title: Auto-Annotate K8s Pods based on Problem Events
      description: ''
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: event.kind == "DAVIS_PROBLEM" AND dt.analysis.ready == true AND
            (event.category == "MONITORING_UNAVAILABLE" OR event.category == "AVAILABILITY"
            OR event.category == "ERROR" OR event.category == "SLOWDOWN" OR event.category
            == "RESOURCE_CONTENTION" OR event.category == "CUSTOM_ALERT") AND (matchesValue(smartscape.affected_entity.types,
            "K8S_POD"))
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status"]
            == "ACTIVE" else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"]
            }}'
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                error: true
                custom: true
                resource: true
                slowdown: true
                availability: true
                monitoringUnavailable: true
              entityTags: {}
              customFilter: matchesValue(smartscape.affected_entity.types, "K8S_POD")
              analysisReady: true
              onProblemClose: true
              entityTagsMatch: all
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Auto-Annotate K8s Pods based on Problem Events
    
        This workflow is triggered when a Problem Event occurs that affects `K8S_POD` entities. In such event the pod will be annotated with `metadata.dynatrace.com/problems` and the id of problems the pod is involved in. Annotations can be used to enrich Kubernetes resources with metadata and allow Dynatrace insights to also show up in other products such as ArgoCD.
    
        # Setup
    
        1. **Set up Kubernetes Connector**\
           If you have not already you need to [set up a connection](/ui/apps/dynatrace.settings/settings/dynatrace.kubernetes.connector) with Kubernetes. Learn more about [Kubernetes Connector setup](https://dt-url.net/5v2266l) in the official Dynatrace documentation.
        1. **Grant permissions to Workflows**\
           In addition to permissions needed by Kubernetes Connector this workflow also needs permission to read Smartscape nodes and edges from Grail (`storage:smartscape:read`).
    
        # Trigger configuration
    
        By default, this workflows uses a problem [trigger](?trigger=) with following configuration:
        * **Event state**: active or closed
        * **Event category**: Error, Custom, Resource, Slowdown, Availability, Monitoring unavailable
        * **Additional custom filter**:
          ```
          matchesValue(smartscape.affected_entity.types, "K8S_POD")
          ```
        Feel free to customize what event categories this workflow should be triggered by.
    
        # Query affected pods
    
        The [query_affected_pods](?task=query_affected_pods) action queries additional information about pods affected by the problem such as:
        * Namespace of the pod
        * Pod name
        * Pod annotation `metadata.dynatrace.com/problems`
    
        # Prepare patch
    
        The [prepare_patch](?task=prepare_patch) action uses the result of *query_affected_pods* as input and prepares patch instructions containing new annotation values for `metadata.dynatrace.com/problems`. Because pods can be affected by multiple problems at the same time a list of problem ids is serialized to text representation such as `["P-1234","P-5678"]`. When a problem is closed this action prepares a patch to remove the problem id from the list or even remove the `metadata.dynatrace.com/problems` annotation altogether if no problem remains.
    
        # Patch pods
    
        The [patch_pods](?task=patch_pods) action uses the result of *prepare_patch* as input and adds/modifies/removes the `metadata.dynatrace.com/problems` annotation for all affected pods.
    
        # Customization Examples
    
        Maybe pods are not the only kind of resource you want to enrich with additional information. This workflow can be customized to work with entities other than `K8S_POD`. [Learn more](https://docs.dynatrace.com/docs/shortlink/semantic-dictionary-smartscape-kubernetes) about preconfigured Kubernetes entities provided by Smartscape in the official Dynatrace documentation.
    
        # Next steps
    
        * Turn on notifications 🔔 to be notified about workflow failures via email.
        * Use `kubectl` to verify Kubernetes resources are annotated with `metadata.dynatrace.com/problems` once the workflow has run.
    
        # Learn more
    
        * [Kubernetes Connector](https://dt-url.net/ks026rr)
        * [Smartscape - Kubernetes](https://dt-url.net/ap4263q)
      tasks:
        patch_pods:
          name: patch_pods
          input:
            name: '{{ _.pod.name }}'
            patch: '{{ _.pod.patch | to_json }}'
            strategy: strategic
            namespace: '{{ _.pod.namespace }}'
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
              shortNames:
                - po
          action: dynatrace.kubernetes.connector:patch-resource
          active: true
          position:
            x: 0
            y: 3
          conditions:
            states:
              prepare_patch: OK
          withItems: pod in {{ result("prepare_patch") }}
          concurrency: 1
          description: Patches a Kubernetes resource
          predecessors:
            - prepare_patch
        prepare_patch:
          name: prepare_patch
          input:
            script: |
              import { execution } from '@dynatrace-sdk/automation-utils';
    
              function addProblem(id) {
                return (record) => {
                  let problems = JSON.parse(record.problems || '[]');
                  problems = new Set(problems);
                  problems.add(id);
                  problems = [...problems];
                  problems.sort();
                  problems = JSON.stringify(problems);
    
                  return {
                    ...record,
                    problems
                  }
                }
              }
    
              function removeProblem(id) {
                return (record) => {
                  let problems = JSON.parse(record.problems || '[]');
                  const index = problems.indexOf(id);
                  if (index > -1) {
                    problems.splice(index, 1)
                  }
                  problems.sort();
                  if (problems.length === 0) {
                    problems = null;
                  } else {
                    problems = JSON.stringify(problems);
                  }
    
                  return {
                    ...record,
                    problems
                  }
                }
              }
    
              export default async function () {
                const exe = await execution();
                const eventContext = exe.event();
                let { records } = await exe.result('query_affected_pods');
    
                return records.map(eventContext['event.kind'] === 'ACTIVE'
                                   ? addProblem(eventContext.display_id)
                                   : removeProblem(eventContext.display_id))
                              .map(record => ({
                                namespace: record.namespace,
                                name: record.name,
                                patch: {
                                  metadata: {
                                    annotations: {
                                      'metadata.dynatrace.com/problems': record.problems,
                                    },
                                  },
                                },
                              }));
              }
          action: dynatrace.automations:run-javascript
          active: true
          position:
            x: 0
            y: 2
          conditions:
            custom: ''
            states:
              query_affected_pods: OK
          description: Run custom JavaScript code.
          predecessors:
            - query_affected_pods
        query_affected_pods:
          name: query_affected_pods
          input:
            query: |
              {% set ns = namespace(records=[]) %}
              {% for affected_entity_id in event()["smartscape.affected_entity.ids"] if affected_entity_id.startswith("K8S_POD") %}
                {% set _ = ns.records.append('record(id = toSmartscapeId("' ~ affected_entity_id ~ '"))') %}
              {% endfor %}
              {% if ns.records | length > 0 %}
              smartscapeNodes "K8S_POD"
              | filter id in [data {{ ns.records | join(', ') }}]
              | fields namespace = k8s.namespace.name, name = k8s.pod.name, problems = tags[`metadata.dynatrace.com/problems`]
              {% else %}
              data record()
              | limit 0
              {% endif %}
          action: dynatrace.automations:execute-dql-query
          position:
            x: 0
            y: 1
          conditions:
            else: STOP
            custom: ''
            states: {}
          description: Make use of Dynatrace Grail data in your workflow.
          predecessors: []
    EOT
  custom_id = "dynatrace.kubernetes.connector.auto-annotate-k8s-pods-based-on-problem-events"
  # private = false
}
