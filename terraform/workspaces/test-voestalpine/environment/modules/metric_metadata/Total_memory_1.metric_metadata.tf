resource "dynatrace_metric_metadata" "Total_memory_1" {
  description        = "The total host memory in bytes (not including TMM). This is for a single host system."
  display_name       = "Total memory"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.memory.total"
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
