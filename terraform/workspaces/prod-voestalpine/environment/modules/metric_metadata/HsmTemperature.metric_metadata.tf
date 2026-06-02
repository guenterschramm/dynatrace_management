resource "dynatrace_metric_metadata" "HsmTemperature" {
  display_name = "HsmTemperature"
  metric_id    = "metric-cloud.aws.cloudhsm.HsmTemperature.By.ClusterId.HsmId"
  unit         = "Count"
}
