resource "dynatrace_metric_metadata" "NumTxCommitted" {
  display_name = "NumTxCommitted"
  metric_id    = "metric-cloud.aws.neptune.NumTxCommitted.By.DBInstanceIdentifier"
  unit         = "Count"
}
