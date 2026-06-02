resource "dynatrace_metric_metadata" "Requests_per_second" {
  description  = "HTTP requests/sec being processed by the worker process."
  display_name = "Requests per second"
  metric_id    = "metric-iis.W3SVCW3WP.RequestsPerSec"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
