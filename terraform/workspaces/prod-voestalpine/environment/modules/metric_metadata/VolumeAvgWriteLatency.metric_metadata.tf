resource "dynatrace_metric_metadata" "VolumeAvgWriteLatency" {
  display_name = "VolumeAvgWriteLatency"
  metric_id    = "metric-cloud.aws.ebs.VolumeAvgWriteLatency.By.InstanceId.VolumeId"
  unit         = "Milliseconds"
}
