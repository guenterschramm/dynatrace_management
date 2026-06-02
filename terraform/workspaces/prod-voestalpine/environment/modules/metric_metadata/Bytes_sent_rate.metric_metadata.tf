resource "dynatrace_metric_metadata" "Bytes_sent_rate" {
  description  = "Rate of sending data by HTTP service for this site"
  display_name = "Bytes sent rate"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.BytesSentRate"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
