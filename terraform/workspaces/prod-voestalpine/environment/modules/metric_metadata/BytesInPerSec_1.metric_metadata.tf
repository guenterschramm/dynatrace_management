resource "dynatrace_metric_metadata" "BytesInPerSec_1" {
  display_name = "BytesInPerSec"
  metric_id    = "metric-cloud.aws.kafka_connect.BytesInPerSec.By.ConnectorName"
  unit         = "Bytes/Second"
}
