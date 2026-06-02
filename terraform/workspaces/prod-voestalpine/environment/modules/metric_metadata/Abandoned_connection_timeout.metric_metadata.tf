resource "dynatrace_metric_metadata" "Abandoned_connection_timeout" {
  description  = "Timeout before an abandoned connection can be removed"
  display_name = "Abandoned connection timeout"
  metric_id    = "metric-tomcat.connectionPool.removeAbandonedTimeout"
  unit         = "Second"
}
