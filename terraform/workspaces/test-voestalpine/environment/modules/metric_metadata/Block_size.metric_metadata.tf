resource "dynatrace_metric_metadata" "Block_size" {
  description        = "The number of bytes in the specified partition."
  display_name       = "Block size"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.disk.block.size"
  source_entity_type = "f5:disk"
  tags               = [ "F5", "Disk" ]
  unit               = "Byte"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Disk name"
      key          = "disk.name"
    }
  }
}
