resource "dynatrace_metric_query" "metric-func_sfm_extension_memory_consumption" {
  metric_id       = "metric-func:sfm_extension_memory_consumption"
  metric_selector = "dsfm:extension.engine.memory_used"
}
