resource "dynatrace_metric_metadata" "Bytes_received_rate" {
  description  = "Rate of received data by HTTP service for this site"
  display_name = "Bytes received rate"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.BytesReceivedRate"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
