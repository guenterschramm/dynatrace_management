resource "dynatrace_metric_metadata" "ExecutionsAborted" {
  display_name = "ExecutionsAborted"
  metric_id    = "metric-cloud.aws.states.ExecutionsAborted.By.StateMachineArn"
  unit         = "Count"
}
