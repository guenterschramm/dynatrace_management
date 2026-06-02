resource "dynatrace_metric_metadata" "VolumeTotalWriteTime" {
  display_name = "VolumeTotalWriteTime"
  metric_id    = "metric-cloud.aws.ebs.VolumeTotalWriteTime.By.VolumeId"
  unit         = "Seconds"
}
