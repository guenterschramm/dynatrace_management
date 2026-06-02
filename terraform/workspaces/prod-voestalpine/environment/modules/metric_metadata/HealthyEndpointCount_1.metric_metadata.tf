resource "dynatrace_metric_metadata" "HealthyEndpointCount_1" {
  display_name = "HealthyEndpointCount"
  metric_id    = "metric-cloud.aws.globalaccelerator.HealthyEndpointCount.By.Accelerator.Listener"
  unit         = "Count"
}
