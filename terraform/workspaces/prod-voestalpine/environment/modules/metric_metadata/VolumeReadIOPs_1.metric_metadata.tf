resource "dynatrace_metric_metadata" "VolumeReadIOPs_1" {
  display_name = "VolumeReadIOPs"
  metric_id    = "metric-cloud.aws.neptune.VolumeReadIOPs.By.DBClusterIdentifier"
  unit         = "Count/Second"
}
