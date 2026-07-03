resource "dynatrace_metric_metadata" "Used_Disk_1" {
  description  = "The percentage disk used for a specific partition"
  display_name = "Used Disk (%)"
  metric_id    = "metric-func:com.dynatrace.extension.f5.bigip.sys.host.disk.used.percent"
  tags         = [ "F5", "Disk" ]
  unit         = "Percent"
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
