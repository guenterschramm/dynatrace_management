resource "dynatrace_metric_metadata" "VolumeWriteIOPs" {
  display_name = "VolumeWriteIOPs"
  metric_id    = "metric-cloud.aws.rds.VolumeWriteIOPs.By.DBClusterIdentifier"
  unit         = "Count"
}
