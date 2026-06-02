resource "dynatrace_metric_metadata" "IncomingBytes_2" {
  display_name = "IncomingBytes"
  metric_id    = "metric-cloud.aws.kinesisdatastreams.IncomingBytes.By.StreamName"
  unit         = "Bytes"
}
