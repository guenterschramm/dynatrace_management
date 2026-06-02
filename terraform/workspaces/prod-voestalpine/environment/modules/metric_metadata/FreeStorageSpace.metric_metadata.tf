resource "dynatrace_metric_metadata" "FreeStorageSpace" {
  display_name = "FreeStorageSpace"
  metric_id    = "metric-cloud.aws.rds.FreeStorageSpace.By.DBInstanceIdentifier"
  unit         = "Bytes"
}
