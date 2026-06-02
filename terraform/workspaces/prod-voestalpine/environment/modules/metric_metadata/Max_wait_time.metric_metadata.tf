resource "dynatrace_metric_metadata" "Max_wait_time" {
  description  = "The maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception"
  display_name = "Max wait time"
  metric_id    = "metric-tomcat.connectionPool.maxWait"
  unit         = "Millisecond"
}
