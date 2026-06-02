resource "dynatrace_metric_metadata" "EstimatedDbSize" {
  display_name = "EstimatedDbSize"
  metric_id    = "metric-cloud.aws.dax.EstimatedDbSize.By.ClusterId"
  unit         = "Bytes"
}
