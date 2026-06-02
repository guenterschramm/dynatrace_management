resource "dynatrace_metric_query" "metric-func_memcached_cache_usage" {
  metric_id       = "metric-func:memcached.cache_usage"
  metric_selector =<<-EOT
    100*(memcached.bytes:splitBy("dt.entity.host","dt.entity.process_group_instance","dt.metrics.source","host.name","dt.security_context") / memcached.limit_maxbytes:splitBy("dt.entity.host","dt.entity.process_group_instance","dt.metrics.source","host.name","dt.security_context"))
  EOT
}
