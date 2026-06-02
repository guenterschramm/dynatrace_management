resource "dynatrace_metric_metadata" "Total_threads" {
  description  = "Total number of threads available to process requests in the worker process."
  display_name = "Total threads"
  metric_id    = "metric-iis.W3SVCW3WP.TotalThreads"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
