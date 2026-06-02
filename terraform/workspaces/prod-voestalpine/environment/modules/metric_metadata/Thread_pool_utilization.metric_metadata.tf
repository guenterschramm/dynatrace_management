resource "dynatrace_metric_metadata" "Thread_pool_utilization" {
  description  = "Busy threads divided by the pool's max threads"
  display_name = "Thread pool utilization"
  metric_id    = "metric-func:tomcat.threadPool.utilization"
  unit         = "Percent"
}
