resource "dynatrace_metric_metadata" "PacketsProcessed" {
  display_name = "PacketsProcessed"
  metric_id    = "metric-cloud.aws.globalaccelerator.PacketsProcessed.By.Accelerator"
  unit         = "Count"
}
