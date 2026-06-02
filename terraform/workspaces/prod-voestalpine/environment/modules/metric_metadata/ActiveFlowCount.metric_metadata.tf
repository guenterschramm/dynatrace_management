resource "dynatrace_metric_metadata" "ActiveFlowCount" {
  display_name = "ActiveFlowCount"
  metric_id    = "metric-cloud.aws.globalaccelerator.ActiveFlowCount.By.Accelerator"
  unit         = "Count"
}
