resource "dynatrace_metric_metadata" "VolumeIdleTime" {
  display_name = "VolumeIdleTime"
  metric_id    = "metric-cloud.aws.ebs.VolumeIdleTime.By.VolumeId"
  unit         = "Seconds"
}
