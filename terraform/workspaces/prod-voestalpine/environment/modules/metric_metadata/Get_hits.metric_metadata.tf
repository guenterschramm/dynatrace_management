resource "dynatrace_metric_metadata" "Get_hits" {
  display_name       = "Get hits"
  metric_id          = "metric-memcached.get_hits.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
