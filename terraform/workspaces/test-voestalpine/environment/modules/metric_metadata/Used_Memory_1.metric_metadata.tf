resource "dynatrace_metric_metadata" "Used_memory_1" {
  description        = "The host memory in bytes currently in use (not including TMM). This is for a single host system."
  display_name       = "Used memory"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.memory.used"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "Memory" ]
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
