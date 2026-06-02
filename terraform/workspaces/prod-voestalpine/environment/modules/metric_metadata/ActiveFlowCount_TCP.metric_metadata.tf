resource "dynatrace_metric_metadata" "ActiveFlowCount_TCP" {
  display_name = "ActiveFlowCount_TCP"
  metric_id    = "metric-cloud.aws.networkelb.ActiveFlowCount_TCP.By.LoadBalancer"
  unit         = "Count"
}
