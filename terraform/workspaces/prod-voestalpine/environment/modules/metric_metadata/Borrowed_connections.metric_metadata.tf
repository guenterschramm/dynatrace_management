resource "dynatrace_metric_metadata" "Borrowed_connections" {
  display_name = "Borrowed connections"
  metric_id    = "metric-tomcat.connectionPool.borrowedConnections"
  unit         = "Count"
}
