resource "dynatrace_metric_metadata" "Current_thread_count" {
  description  = "Current thread count"
  display_name = "Current thread count"
  metric_id    = "metric-tomcat.threadPool.currentThreadCount"
  unit         = "Count"
}
