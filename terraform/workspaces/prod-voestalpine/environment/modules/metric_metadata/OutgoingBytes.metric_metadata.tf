resource "dynatrace_metric_metadata" "OutgoingBytes" {
  display_name = "OutgoingBytes"
  metric_id    = "metric-cloud.aws.kinesisdatastreams.OutgoingBytes.By.StreamName"
  unit         = "Bytes"
}
