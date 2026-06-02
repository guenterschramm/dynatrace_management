resource "dynatrace_metric_metadata" "Max_total_connections" {
  description  = "Maximum total amount of connections"
  display_name = "Max total connections"
  metric_id    = "metric-tomcat.connectionPool.maxTotal"
  unit         = "Count"
}
