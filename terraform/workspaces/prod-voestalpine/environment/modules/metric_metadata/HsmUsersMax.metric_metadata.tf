resource "dynatrace_metric_metadata" "HsmUsersMax" {
  display_name = "HsmUsersMax"
  metric_id    = "metric-cloud.aws.cloudhsm.HsmUsersMax.By.ClusterId.HsmId"
  unit         = "Count"
}
