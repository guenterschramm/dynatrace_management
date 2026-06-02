resource "dynatrace_metric_metadata" "FreeableMemory" {
  display_name = "FreeableMemory"
  metric_id    = "metric-cloud.aws.rds.FreeableMemory.By.DBInstanceIdentifier"
  unit         = "Bytes"
}
