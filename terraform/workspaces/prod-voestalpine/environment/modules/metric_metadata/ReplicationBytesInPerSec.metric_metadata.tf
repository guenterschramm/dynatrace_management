resource "dynatrace_metric_metadata" "ReplicationBytesInPerSec" {
  display_name = "ReplicationBytesInPerSec"
  metric_id    = "metric-cloud.aws.kafka.ReplicationBytesInPerSec.By.Broker_ID.Cluster_Name"
  unit         = "Bytes/Second"
}
