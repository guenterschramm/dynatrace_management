resource "dynatrace_metric_metadata" "VolumeThroughputPercentage" {
  display_name = "VolumeThroughputPercentage"
  metric_id    = "metric-cloud.aws.ebs.VolumeThroughputPercentage.By.VolumeId"
  unit         = "Percent"
}
