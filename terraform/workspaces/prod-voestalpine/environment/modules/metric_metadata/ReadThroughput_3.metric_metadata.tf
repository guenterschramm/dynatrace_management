resource "dynatrace_metric_metadata" "ReadThroughput_3" {
  display_name = "ReadThroughput"
  metric_id    = "metric-cloud.aws.dms.ReadThroughput.By.ReplicationInstanceIdentifier.ReplicationTaskIdentifier"
  unit         = "Bytes/Second"
}
