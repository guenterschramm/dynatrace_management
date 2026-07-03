resource "dynatrace_metric_metadata" "Set_commands" {
  description        = "Number of set commands executed in Memcached"
  display_name       = "Set commands"
  metric_id          = "metric-memcached.cmd_set.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
