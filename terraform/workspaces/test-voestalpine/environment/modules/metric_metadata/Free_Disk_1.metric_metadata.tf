resource "dynatrace_metric_metadata" "Free_Disk_1" {
  description  = "The percentage disk free (available) for a specific partition"
  display_name = "Free Disk (%)"
  metric_id    = "metric-func:com.dynatrace.extension.f5.bigip.sys.host.disk.free.percent"
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
  metric_properties {
    max_value           = 100
    min_value           = 0
    root_cause_relevant = true
    value_type          = "score"
  }
}
