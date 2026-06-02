resource "dynatrace_metric_metadata" "VolumeTotalReadTime" {
  display_name = "VolumeTotalReadTime"
  metric_id    = "metric-cloud.aws.ebs.VolumeTotalReadTime.By.VolumeId"
  unit         = "Seconds"
}
