resource "dynatrace_metric_metadata" "BytesInPerSec_2" {
  display_name = "BytesInPerSec"
  metric_id    = "metric-cloud.aws.kafka.BytesInPerSec.By.Broker_ID.Cluster_Name"
  unit         = "Bytes/Second"
}
