resource "dynatrace_metric_metadata" "PortAllocationErrorCount" {
  display_name = "PortAllocationErrorCount"
  metric_id    = "metric-cloud.aws.networkelb.PortAllocationErrorCount.By.LoadBalancer"
  unit         = "Count"
}
