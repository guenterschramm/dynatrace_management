resource "dynatrace_metric_metadata" "VolumeReadOps" {
  display_name = "VolumeReadOps"
  metric_id    = "metric-cloud.aws.ebs.VolumeReadOps.By.VolumeId"
  unit         = "Count"
}
