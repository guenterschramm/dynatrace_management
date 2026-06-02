resource "dynatrace_metric_metadata" "VolumeAvgReadLatency" {
  display_name = "VolumeAvgReadLatency"
  metric_id    = "metric-cloud.aws.ebs.VolumeAvgReadLatency.By.InstanceId.VolumeId"
  unit         = "Milliseconds"
}
