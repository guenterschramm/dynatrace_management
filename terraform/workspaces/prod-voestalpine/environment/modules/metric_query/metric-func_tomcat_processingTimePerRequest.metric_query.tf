resource "dynatrace_metric_query" "metric-func_tomcat_processingTimePerRequest" {
  metric_id       = "metric-func:tomcat.processingTimePerRequest"
  metric_selector =<<-EOT
    tomcat.processingTime.count:splitBy(name,"dt.entity.process_group_instance") / tomcat.requestCount.count:splitBy(name,"dt.entity.process_group_instance")
  EOT
}
