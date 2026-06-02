resource "dynatrace_metric_metadata" "IncomingBytes_1" {
  display_name = "IncomingBytes"
  metric_id    = "metric-cloud.aws.firehose.IncomingBytes.By.DeliveryStreamName"
  unit         = "Bytes"
}
