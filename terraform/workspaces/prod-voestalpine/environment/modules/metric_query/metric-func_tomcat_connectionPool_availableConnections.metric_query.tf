resource "dynatrace_metric_query" "metric-func_tomcat_connectionPool_availableConnections" {
  metric_id       = "metric-func:tomcat.connectionPool.availableConnections"
  metric_selector = "(tomcat.connectionPool.maxActive - tomcat.connectionPool.activeConnections)"
}
