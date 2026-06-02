resource "dynatrace_metric_metadata" "VolumeQueueLength" {
  display_name = "VolumeQueueLength"
  metric_id    = "metric-cloud.aws.ebs.VolumeQueueLength.By.VolumeId"
  unit         = "Count"
}
