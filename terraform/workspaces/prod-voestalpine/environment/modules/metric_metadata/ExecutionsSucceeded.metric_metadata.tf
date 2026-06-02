resource "dynatrace_metric_metadata" "ExecutionsSucceeded" {
  display_name = "ExecutionsSucceeded"
  metric_id    = "metric-cloud.aws.states.ExecutionsSucceeded.By.StateMachineArn"
  unit         = "Count"
}
