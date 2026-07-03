resource "dynatrace_metric_metadata" "Total_blocks" {
  description        = "The number of total blocks in the specified partition."
  display_name       = "Total blocks"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.host.disk.total.blocks"
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
}
