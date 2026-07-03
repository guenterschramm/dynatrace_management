resource "dynatrace_metric_metadata" "TMM_memory_total" {
  description        = "The total memory available to TMM (Traffic Management Microkernel)."
  display_name       = "TMM memory total"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.tmm.memory.total"
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
