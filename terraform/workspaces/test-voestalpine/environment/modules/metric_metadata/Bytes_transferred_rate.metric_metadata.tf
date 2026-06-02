resource "dynatrace_metric_metadata" "Bytes_transferred_rate" {
  description  = "Rate of total bytes transferred (sent and received) by HTTP service for this site"
  display_name = "Bytes transferred rate"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.BytesTransferredRate"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
