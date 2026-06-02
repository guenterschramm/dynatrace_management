resource "dynatrace_metric_metadata" "Abandoned_connections" {
  description  = "Number of connections that have not been properly released"
  display_name = "Abandoned connections"
  metric_id    = "metric-tomcat.connectionPool.removeAbandoned"
  unit         = "Count"
}
