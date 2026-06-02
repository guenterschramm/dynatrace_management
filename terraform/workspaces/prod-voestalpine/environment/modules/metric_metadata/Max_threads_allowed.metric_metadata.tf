resource "dynatrace_metric_metadata" "Max_threads_allowed" {
  description  = "Max threads allowed"
  display_name = "Max threads allowed"
  metric_id    = "metric-tomcat.threadPool.maxThreads"
  unit         = "Count"
}
