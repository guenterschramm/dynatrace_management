resource "dynatrace_metric_metadata" "BytesOutPerSec_2" {
  display_name = "BytesOutPerSec"
  metric_id    = "metric-cloud.aws.kafka.BytesOutPerSec.By.Broker_ID.Cluster_Name"
  unit         = "Bytes/Second"
}
