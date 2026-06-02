resource "dynatrace_metric_query" "metric-func_tomcat_errorCountPerSecond" {
  metric_id       = "metric-func:tomcat.errorCountPerSecond"
  metric_selector = "tomcat.errorCount.count:splitBy(name,\"dt.entity.process_group_instance\"):auto:rate(1s)"
}
