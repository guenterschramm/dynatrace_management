resource "dynatrace_metric_metadata" "ActiveFlowCount_UDP" {
  display_name = "ActiveFlowCount_UDP"
  metric_id    = "metric-cloud.aws.networkelb.ActiveFlowCount_UDP.By.LoadBalancer"
  unit         = "Count"
}
