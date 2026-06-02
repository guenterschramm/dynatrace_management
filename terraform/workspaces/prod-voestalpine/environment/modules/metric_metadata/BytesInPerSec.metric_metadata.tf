resource "dynatrace_metric_metadata" "BytesInPerSec" {
  display_name = "BytesInPerSec"
  metric_id    = "metric-cloud.aws.kafka.BytesInPerSec.By.Broker_ID.Cluster_Name.Topic"
  unit         = "Bytes/Second"
}
