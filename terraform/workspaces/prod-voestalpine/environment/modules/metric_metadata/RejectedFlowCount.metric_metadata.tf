resource "dynatrace_metric_metadata" "RejectedFlowCount" {
  display_name = "RejectedFlowCount"
  metric_id    = "metric-cloud.aws.networkelb.RejectedFlowCount.By.LoadBalancer"
  unit         = "Count"
}
