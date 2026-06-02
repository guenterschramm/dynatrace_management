resource "dynatrace_metric_metadata" "Waiting_connections" {
  description  = "Currently waiting connections"
  display_name = "Waiting connections"
  metric_id    = "metric-tomcat.connectionPool.numWaiters"
  unit         = "Count"
}
