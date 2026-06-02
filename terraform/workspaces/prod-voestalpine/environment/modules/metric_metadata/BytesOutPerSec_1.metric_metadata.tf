resource "dynatrace_metric_metadata" "BytesOutPerSec_1" {
  display_name = "BytesOutPerSec"
  metric_id    = "metric-cloud.aws.kafka_connect.BytesOutPerSec.By.ConnectorName"
  unit         = "Bytes/Second"
}
