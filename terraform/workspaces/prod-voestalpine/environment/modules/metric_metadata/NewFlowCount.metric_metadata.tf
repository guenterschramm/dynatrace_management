resource "dynatrace_metric_metadata" "NewFlowCount" {
  display_name = "NewFlowCount"
  metric_id    = "metric-cloud.aws.globalaccelerator.NewFlowCount.By.Accelerator"
  unit         = "Count"
}
