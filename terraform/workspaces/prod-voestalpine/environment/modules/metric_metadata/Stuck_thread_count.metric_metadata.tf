resource "dynatrace_metric_metadata" "Stuck_thread_count" {
  description  = "Stuck thread count"
  display_name = "Stuck thread count"
  metric_id    = "metric-tomcat.stuckThreads"
  unit         = "Count"
}
