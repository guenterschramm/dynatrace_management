resource "dynatrace_metric_metadata" "Other_TMOS_memory_total" {
  description        = "The total memory available to other TMOS processes (excluding TMM)."
  display_name       = "Other TMOS memory total"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.tmos.other.memory.total"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "Memory" ]
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
}
