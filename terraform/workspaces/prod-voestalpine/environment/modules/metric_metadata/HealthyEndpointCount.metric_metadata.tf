resource "dynatrace_metric_metadata" "HealthyEndpointCount" {
  display_name = "HealthyEndpointCount"
  metric_id    = "metric-cloud.aws.globalaccelerator.HealthyEndpointCount.By.Accelerator"
  unit         = "Count"
}
