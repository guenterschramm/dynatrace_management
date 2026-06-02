resource "dynatrace_metric_metadata" "Returned_connections" {
  display_name = "Returned connections"
  metric_id    = "metric-tomcat.connectionPool.returnedConnections"
  unit         = "Count"
}
