resource "dynatrace_metric_metadata" "ReplicationBytesOutPerSec" {
  display_name = "ReplicationBytesOutPerSec"
  metric_id    = "metric-cloud.aws.kafka.ReplicationBytesOutPerSec.By.Broker_ID.Cluster_Name"
  unit         = "Bytes/Second"
}
