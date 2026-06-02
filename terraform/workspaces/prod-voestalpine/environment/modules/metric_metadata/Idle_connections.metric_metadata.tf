resource "dynatrace_metric_metadata" "Idle_connections" {
  description  = "Number of open but unused connections"
  display_name = "Idle connections"
  metric_id    = "metric-tomcat.connectionPool.idleConnections"
  unit         = "Count"
}
