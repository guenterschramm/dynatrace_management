resource "dynatrace_metric_metadata" "HsmSessionCount" {
  display_name = "HsmSessionCount"
  metric_id    = "metric-cloud.aws.cloudhsm.HsmSessionCount.By.ClusterId.HsmId"
  unit         = "Count"
}
