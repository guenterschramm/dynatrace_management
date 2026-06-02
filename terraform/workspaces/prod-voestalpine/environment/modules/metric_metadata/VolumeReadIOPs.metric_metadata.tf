resource "dynatrace_metric_metadata" "VolumeReadIOPs" {
  display_name = "VolumeReadIOPs"
  metric_id    = "metric-cloud.aws.rds.VolumeReadIOPs.By.DBClusterIdentifier"
  unit         = "Count"
}
