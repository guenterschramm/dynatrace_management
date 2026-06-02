resource "dynatrace_metric_metadata" "_invalid_Value_64" {
  description = "Number of classes unloaded since JVM start."
  metric_id   = "metric-jvm.class.unloaded.count"
  unit        = "{class}"
}
