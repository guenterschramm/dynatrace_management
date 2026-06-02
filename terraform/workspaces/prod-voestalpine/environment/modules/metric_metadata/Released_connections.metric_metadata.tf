resource "dynatrace_metric_metadata" "Released_connections" {
  display_name = "Released connections"
  metric_id    = "metric-tomcat.connectionPool.releasedConnections"
  unit         = "Count"
}
