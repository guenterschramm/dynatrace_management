resource "dynatrace_metric_metadata" "ExecutionsTimedOut" {
  display_name = "ExecutionsTimedOut"
  metric_id    = "metric-cloud.aws.states.ExecutionsTimedOut.By.StateMachineArn"
  unit         = "Count"
}
