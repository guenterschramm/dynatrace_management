resource "dynatrace_metric_query" "metric-func_tomcat_bytesSentPerSecond" {
  metric_id       = "metric-func:tomcat.bytesSentPerSecond"
  metric_selector = "tomcat.bytesSent.count:splitBy(name,\"dt.entity.process_group_instance\"):auto:rate(1s)"
}
