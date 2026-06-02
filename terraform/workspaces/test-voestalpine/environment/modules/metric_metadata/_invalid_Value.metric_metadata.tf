resource "dynatrace_metric_metadata" "_invalid_Value" {
  description = "Measure of memory used."
  metric_id   = "metric-jvm.memory.used"
  unit        = "Byte"
}
