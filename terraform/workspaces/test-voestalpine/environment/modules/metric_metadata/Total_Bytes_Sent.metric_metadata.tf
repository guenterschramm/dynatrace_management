resource "dynatrace_metric_metadata" "Total_Bytes_Sent" {
  description  = "The number of data bytes that have been sent by the Web service (since service startup)."
  display_name = "Total Bytes Sent"
  metric_id    = "metric-iis.total.bytes.sent.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Byte"
}
