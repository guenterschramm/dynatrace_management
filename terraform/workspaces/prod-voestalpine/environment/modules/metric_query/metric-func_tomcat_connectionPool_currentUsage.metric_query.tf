resource "dynatrace_metric_query" "metric-func_tomcat_connectionPool_currentUsage" {
  metric_id       = "metric-func:tomcat.connectionPool.currentUsage"
  metric_selector = "100*(tomcat.connectionPool.activeConnections / tomcat.connectionPool.maxActive)"
}
