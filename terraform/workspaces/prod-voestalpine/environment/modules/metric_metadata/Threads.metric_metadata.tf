resource "dynatrace_metric_metadata" "Threads" {
  description        = "Number of threads in Memcached"
  display_name       = "Threads"
  metric_id          = "metric-memcached.threads"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
