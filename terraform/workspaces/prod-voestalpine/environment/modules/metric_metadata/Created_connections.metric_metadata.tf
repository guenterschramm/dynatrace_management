resource "dynatrace_metric_metadata" "Created_connections" {
  description  = "Number of connections created"
  display_name = "Created connections"
  metric_id    = "metric-tomcat.connectionPool.createdConnections"
  unit         = "Count"
}
