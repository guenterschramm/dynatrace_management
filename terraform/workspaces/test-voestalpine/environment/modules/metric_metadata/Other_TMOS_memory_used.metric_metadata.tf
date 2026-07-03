resource "dynatrace_metric_metadata" "Other_TMOS_memory_used" {
  description        = "The memory currently in use by other TMOS processes (excluding TMM)."
  display_name       = "Other TMOS memory used"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.tmos.other.memory.used"
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
