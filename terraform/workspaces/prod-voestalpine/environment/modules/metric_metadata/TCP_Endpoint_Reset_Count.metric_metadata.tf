resource "dynatrace_metric_metadata" "TCP_Endpoint_Reset_Count" {
  display_name = "TCP_Endpoint_Reset_Count"
  metric_id    = "metric-cloud.aws.globalaccelerator.TCP_Endpoint_Reset_Count.By.Accelerator"
  unit         = "Count"
}
