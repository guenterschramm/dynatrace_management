resource "dynatrace_metric_metadata" "Active_requests" {
  description  = "Current number of requests being processed by the worker process."
  display_name = "Active requests"
  metric_id    = "metric-iis.W3SVCW3WP.ActiveRequests"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
