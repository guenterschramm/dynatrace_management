resource "dynatrace_metric_query" "metric-func_tomcat_bytesReceivedPerSecond" {
  metric_id       = "metric-func:tomcat.bytesReceivedPerSecond"
  metric_selector = "tomcat.bytesReceived.count:splitBy(name,\"dt.entity.process_group_instance\"):auto:rate(1s)"
}
