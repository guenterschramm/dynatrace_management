resource "dynatrace_metric_metadata" "All_requests" {
  description  = "Total number of HTTP requests made for this site"
  display_name = "All requests"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.AllRequests.count"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
