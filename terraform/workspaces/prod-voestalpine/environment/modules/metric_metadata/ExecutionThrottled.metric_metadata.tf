resource "dynatrace_metric_metadata" "ExecutionThrottled" {
  display_name = "ExecutionThrottled"
  metric_id    = "metric-cloud.aws.states.ExecutionThrottled.By.StateMachineArn"
  unit         = "Count"
}
