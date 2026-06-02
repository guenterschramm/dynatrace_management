resource "dynatrace_metric_events" "OpenShift_containers-namespace_DKI_QA-OOM_error" {
  enabled                    = false
  event_entity_dimension_key = "dt.entity.cloud_application_instance"
  summary                    = "OpenShift containers - namespace DKI QA - OOM error"
  event_template {
    description =<<-EOT
      An Out of Memory error occured on container {dims:k8s.container.name}.
      Cluster: {dims:dt.entity.kubernetes_cluster.name}
      Namespace: {dims:k8s.namespace.name}
      Pod: {dims:k8s.pod.name}
      Workload: {dims:k8s.workload.name}
      EOT
    davis_merge = true
    event_type  = "CUSTOM_ALERT"
    title       = "OpenShift container {entityname} - OOM error"
  }
  model_properties {
    type               = "STATIC_THRESHOLD"
    alert_condition    = "ABOVE"
    alert_on_no_data   = false
    dealerting_samples = 5
    samples            = 5
    threshold          = 0
    violating_samples  = 3
  }
  query_definition {
    type        = "METRIC_KEY"
    aggregation = "VALUE"
    metric_key  = "builtin:kubernetes.container.oom_kills"
    entity_filter {
      dimension_key = "dt.entity.cloud_application_instance"
      conditions {
        condition {
          type     = "MANAGEMENT_ZONE"
          operator = "EQUALS"
          value    = "-4965968369671391180"
        }
      }
    }
  }
}
