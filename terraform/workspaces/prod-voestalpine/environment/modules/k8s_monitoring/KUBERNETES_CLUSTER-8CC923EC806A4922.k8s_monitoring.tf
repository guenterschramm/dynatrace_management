resource "dynatrace_k8s_monitoring" "KUBERNETES_CLUSTER-8CC923EC806A4922" {
  cloud_application_pipeline_enabled = true
  event_processing_active            = true
  filter_events                      = true
  include_all_fdi_events             = true
  open_metrics_builtin_enabled       = false
  open_metrics_pipeline_enabled      = false
  # pvc_monitoring_enabled           = false
  scope                              = "KUBERNETES_CLUSTER-8CC923EC806A4922"
  event_patterns {
    event_pattern {
      active  = true
      label   = "DKI QA namespace events"
      pattern = "involvedObject.namespace=dki-qa"
    }
  }
}
