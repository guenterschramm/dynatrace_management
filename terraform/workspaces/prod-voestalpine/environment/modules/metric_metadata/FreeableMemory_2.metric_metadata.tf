resource "dynatrace_metric_metadata" "FreeableMemory_2" {
  display_name = "FreeableMemory"
  metric_id    = "metric-cloud.aws.neptune.FreeableMemory.By.DBClusterIdentifier"
  unit         = "Bytes"
}
