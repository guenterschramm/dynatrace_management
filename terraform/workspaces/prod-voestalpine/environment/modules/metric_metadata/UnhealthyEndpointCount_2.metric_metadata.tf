resource "dynatrace_metric_metadata" "UnhealthyEndpointCount_2" {
  display_name = "UnhealthyEndpointCount"
  metric_id    = "metric-cloud.aws.globalaccelerator.UnhealthyEndpointCount.By.Accelerator.EndpointGroup.Listener"
  unit         = "Count"
}
