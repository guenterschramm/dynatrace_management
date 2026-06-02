resource "dynatrace_metric_query" "metric-func_tomcat_requestCountPerSecond" {
  metric_id       = "metric-func:tomcat.requestCountPerSecond"
  metric_selector = "tomcat.requestCount.count:splitBy(name,\"dt.entity.process_group_instance\"):auto:rate(1s)"
}
