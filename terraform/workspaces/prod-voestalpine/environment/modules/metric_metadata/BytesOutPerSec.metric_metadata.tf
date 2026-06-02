resource "dynatrace_metric_metadata" "BytesOutPerSec" {
  display_name = "BytesOutPerSec"
  metric_id    = "metric-cloud.aws.kafka.BytesOutPerSec.By.Broker_ID.Cluster_Name.Topic"
  unit         = "Bytes/Second"
}
