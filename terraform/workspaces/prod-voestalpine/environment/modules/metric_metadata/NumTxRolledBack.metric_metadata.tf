resource "dynatrace_metric_metadata" "NumTxRolledBack" {
  display_name = "NumTxRolledBack"
  metric_id    = "metric-cloud.aws.neptune.NumTxRolledBack.By.DBInstanceIdentifier"
  unit         = "Count"
}
