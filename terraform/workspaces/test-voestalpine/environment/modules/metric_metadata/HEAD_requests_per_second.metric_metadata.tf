resource "dynatrace_metric_metadata" "HEAD_requests_per_second" {
  description  = "Rate at which HEAD method requests are made for this site"
  display_name = "HEAD requests per second"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.HeadRequests"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
