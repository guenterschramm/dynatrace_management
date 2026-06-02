resource "dynatrace_metric_metadata" "Reconnected_connections" {
  display_name = "Reconnected connections"
  metric_id    = "metric-tomcat.connectionPool.reconnectedConnections"
  unit         = "Count"
}
