resource "dynatrace_metric_metadata" "Total_Bytes_Transferred" {
  description  = "Total bytes either received or sent by the Web service (since service startup)."
  display_name = "Total Bytes Transferred"
  metric_id    = "metric-iis.total.bytes.transferred.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Byte"
}
