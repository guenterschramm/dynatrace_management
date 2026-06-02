resource "dynatrace_metric_metadata" "Available_connections" {
  description  = "Number of available connections"
  display_name = "Available connections"
  metric_id    = "metric-func:tomcat.connectionPool.availableConnections"
  unit         = "Count"
}
