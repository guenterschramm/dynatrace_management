resource "dynatrace_metric_metadata" "VolumeWriteOps" {
  display_name = "VolumeWriteOps"
  metric_id    = "metric-cloud.aws.ebs.VolumeWriteOps.By.VolumeId"
  unit         = "Count"
}
