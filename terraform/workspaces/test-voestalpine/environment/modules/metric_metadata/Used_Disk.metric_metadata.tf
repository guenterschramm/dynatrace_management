resource "dynatrace_metric_metadata" "Used_Disk" {
  description  = "The total amount of used disk space for a specific partition"
  display_name = "Used Disk"
  metric_id    = "metric-func:com.dynatrace.extension.f5.bigip.sys.host.disk.used.byte"
  tags         = [ "F5", "Disk" ]
  unit         = "Byte"
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
