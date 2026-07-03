resource "dynatrace_metric_metadata" "Get_commands" {
  description        = "Number of get commands executed in Memcached"
  display_name       = "Get commands"
  metric_id          = "metric-memcached.cmd_get.count"
  source_entity_type = "process_group_instance"
  unit               = "Count"
}
