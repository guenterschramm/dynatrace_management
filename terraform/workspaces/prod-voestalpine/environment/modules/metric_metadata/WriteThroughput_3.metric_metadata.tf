resource "dynatrace_metric_metadata" "WriteThroughput_3" {
  display_name = "WriteThroughput"
  metric_id    = "metric-cloud.aws.dms.WriteThroughput.By.ReplicationInstanceIdentifier.ReplicationTaskIdentifier"
  unit         = "Bytes/Second"
}
