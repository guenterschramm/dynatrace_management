resource "dynatrace_metric_metadata" "TMM_memory_used" {
  description        = "The memory currently in use by TMM (Traffic Management Microkernel)."
  display_name       = "TMM memory used"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.tmm.memory.used"
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
