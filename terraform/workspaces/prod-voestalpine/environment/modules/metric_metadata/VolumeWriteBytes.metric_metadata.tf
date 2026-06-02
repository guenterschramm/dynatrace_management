resource "dynatrace_metric_metadata" "VolumeWriteBytes" {
  display_name = "VolumeWriteBytes"
  metric_id    = "metric-cloud.aws.ebs.VolumeWriteBytes.By.VolumeId"
  unit         = "Bytes"
}
