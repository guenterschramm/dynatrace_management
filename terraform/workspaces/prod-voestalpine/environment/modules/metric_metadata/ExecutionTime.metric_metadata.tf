resource "dynatrace_metric_metadata" "ExecutionTime" {
  display_name = "ExecutionTime"
  metric_id    = "metric-cloud.aws.states.ExecutionTime.By.StateMachineArn"
  unit         = "Milliseconds"
}
