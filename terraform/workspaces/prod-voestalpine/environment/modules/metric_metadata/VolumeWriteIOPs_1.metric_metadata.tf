resource "dynatrace_metric_metadata" "VolumeWriteIOPs_1" {
  display_name = "VolumeWriteIOPs"
  metric_id    = "metric-cloud.aws.neptune.VolumeWriteIOPs.By.DBClusterIdentifier"
  unit         = "Count/Second"
}
