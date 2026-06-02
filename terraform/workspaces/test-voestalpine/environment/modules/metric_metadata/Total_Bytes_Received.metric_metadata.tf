resource "dynatrace_metric_metadata" "Total_Bytes_Received" {
  description  = "The number of data bytes that have been receivPed by the Web service (since service startup)."
  display_name = "Total Bytes Received"
  metric_id    = "metric-iis.total.bytes.received.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Byte"
}
