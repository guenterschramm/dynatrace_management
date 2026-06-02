resource "dynatrace_metric_metadata" "HealthyEndpointCount_2" {
  display_name = "HealthyEndpointCount"
  metric_id    = "metric-cloud.aws.globalaccelerator.HealthyEndpointCount.By.Accelerator.EndpointGroup.Listener"
  unit         = "Count"
}
