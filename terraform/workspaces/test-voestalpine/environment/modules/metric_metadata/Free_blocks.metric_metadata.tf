resource "dynatrace_metric_metadata" "Free_blocks" {
  description        = "The number of free blocks in the specified partition."
  display_name       = "Free blocks"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.disk.free.blocks"
  source_entity_type = "f5:disk"
  tags               = [ "F5", "Disk" ]
  unit               = "Count"
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
  metric_properties {
    value_type = "score"
  }
}
