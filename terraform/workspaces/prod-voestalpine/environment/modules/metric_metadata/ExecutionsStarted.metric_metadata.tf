resource "dynatrace_metric_metadata" "ExecutionsStarted" {
  display_name = "ExecutionsStarted"
  metric_id    = "metric-cloud.aws.states.ExecutionsStarted.By.StateMachineArn"
  unit         = "Count"
}
