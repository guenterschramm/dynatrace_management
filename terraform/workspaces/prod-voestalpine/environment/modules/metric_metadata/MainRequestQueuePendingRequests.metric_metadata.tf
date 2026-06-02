resource "dynatrace_metric_metadata" "MainRequestQueuePendingRequests" {
  display_name = "MainRequestQueuePendingRequests"
  metric_id    = "metric-cloud.aws.neptune.MainRequestQueuePendingRequests.By.DBClusterIdentifier.Role"
  unit         = "Count"
}
