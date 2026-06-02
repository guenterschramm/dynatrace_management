resource "dynatrace_metric_metadata" "GET_requests_per_second" {
  description  = "Rate at which GET method requests are made for this site"
  display_name = "GET requests per second"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.GetRequests"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
