resource "dynatrace_metric_metadata" "Current_usage" {
  description  = "Current connection pool usage, expressed in percentage"
  display_name = "Current usage"
  metric_id    = "metric-func:tomcat.connectionPool.currentUsage"
  unit         = "Percent"
}
