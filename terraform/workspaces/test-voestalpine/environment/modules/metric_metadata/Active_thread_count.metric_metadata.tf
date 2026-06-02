resource "dynatrace_metric_metadata" "Active_thread_count" {
  description  = "Number of threads actively processing requests in the worker process."
  display_name = "Active thread count"
  metric_id    = "metric-iis.W3SVCW3WP.ActiveThreadsCount"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
