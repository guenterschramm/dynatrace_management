resource "dynatrace_metric_metadata" "UnhealthyEndpointCount" {
  display_name = "UnhealthyEndpointCount"
  metric_id    = "metric-cloud.aws.globalaccelerator.UnhealthyEndpointCount.By.Accelerator"
  unit         = "Count"
}
