resource "dynatrace_metric_metadata" "ExecutionsFailed" {
  display_name = "ExecutionsFailed"
  metric_id    = "metric-cloud.aws.states.ExecutionsFailed.By.StateMachineArn"
  unit         = "Count"
}
