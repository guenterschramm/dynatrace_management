resource "dynatrace_metric_metadata" "Set_commands" {
  display_name       = "Set commands"
  metric_id          = "metric-memcached.cmd_set.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
