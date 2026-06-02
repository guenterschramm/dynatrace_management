resource "dynatrace_metric_metadata" "HsmUnhealthy" {
  display_name = "HsmUnhealthy"
  metric_id    = "metric-cloud.aws.cloudhsm.HsmUnhealthy.By.ClusterId.HsmId"
  unit         = "Count"
}
