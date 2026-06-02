resource "dynatrace_metric_metadata" "HsmUsersAvailable" {
  display_name = "HsmUsersAvailable"
  metric_id    = "metric-cloud.aws.cloudhsm.HsmUsersAvailable.By.ClusterId.HsmId"
  unit         = "Count"
}
