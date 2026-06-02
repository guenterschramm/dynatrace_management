resource "dynatrace_metric_metadata" "Active_connections" {
  description  = "Currently used connections"
  display_name = "Active connections"
  metric_id    = "metric-tomcat.connectionPool.activeConnections"
  unit         = "Count"
}
