resource "dynatrace_metric_metadata" "Current_threads_busy" {
  description  = "Current threads busy"
  display_name = "Current threads busy"
  metric_id    = "metric-tomcat.threadPool.currentThreadsBusy"
  unit         = "Count"
}
