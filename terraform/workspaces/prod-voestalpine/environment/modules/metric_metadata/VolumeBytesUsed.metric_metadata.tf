resource "dynatrace_metric_metadata" "VolumeBytesUsed" {
  display_name = "VolumeBytesUsed"
  metric_id    = "metric-cloud.aws.rds.VolumeBytesUsed.By.DBClusterIdentifier"
  unit         = "Bytes"
}
