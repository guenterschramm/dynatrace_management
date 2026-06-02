resource "dynatrace_metric_query" "metric-func_sfm_extension_cpu_usage" {
  metric_id       = "metric-func:sfm_extension_cpu_usage"
  metric_selector = "dsfm:extension.engine.cpu_usage"
}
