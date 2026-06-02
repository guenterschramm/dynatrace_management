resource "dynatrace_metric_query" "metric-func_tomcat_threadPool_utilization" {
  metric_id       = "metric-func:tomcat.threadPool.utilization"
  metric_selector =<<-EOT
    (tomcat.threadPool.currentThreadsBusy:splitBy(name,"dt.entity.process_group_instance") / tomcat.threadPool.maxThreads:splitBy(name,"dt.entity.process_group_instance")) * 100
  EOT
}
