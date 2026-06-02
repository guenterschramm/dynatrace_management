resource "dynatrace_metric_metadata" "Max_active_connections" {
  description  = "Maximum amount of active connections allowed concurrently"
  display_name = "Max active connections"
  metric_id    = "metric-tomcat.connectionPool.maxActive"
  unit         = "Count"
}
