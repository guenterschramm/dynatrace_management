resource "dynatrace_metric_metadata" "ActiveFlowCount_TLS" {
  display_name = "ActiveFlowCount_TLS"
  metric_id    = "metric-cloud.aws.networkelb.ActiveFlowCount_TLS.By.LoadBalancer"
  unit         = "Count"
}
