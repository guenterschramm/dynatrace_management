resource "dynatrace_metric_metadata" "Max_idle_connections" {
  description  = "The maximum number of connections that should be kept in the pool at all times"
  display_name = "Max idle connections"
  metric_id    = "metric-tomcat.connectionPool.maxIdle"
  unit         = "Count"
}
