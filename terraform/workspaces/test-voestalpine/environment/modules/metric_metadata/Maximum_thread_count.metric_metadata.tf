resource "dynatrace_metric_metadata" "Maximum_thread_count" {
  description  = "Maximum number of threads to which the thread pool can grow as needed."
  display_name = "Maximum thread count"
  metric_id    = "metric-iis.W3SVCW3WP.MaximumThreadsCount"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
