resource "dynatrace_metric_metadata" "EstimatedDbSize_1" {
  display_name = "EstimatedDbSize"
  metric_id    = "metric-cloud.aws.dax.EstimatedDbSize.By.ClusterId.NodeId"
  unit         = "Bytes"
}
