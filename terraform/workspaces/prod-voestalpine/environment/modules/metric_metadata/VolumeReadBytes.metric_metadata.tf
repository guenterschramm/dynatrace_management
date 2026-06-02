resource "dynatrace_metric_metadata" "VolumeReadBytes" {
  display_name = "VolumeReadBytes"
  metric_id    = "metric-cloud.aws.ebs.VolumeReadBytes.By.VolumeId"
  unit         = "Bytes"
}
