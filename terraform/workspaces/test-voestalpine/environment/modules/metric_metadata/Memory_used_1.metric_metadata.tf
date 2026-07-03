resource "dynatrace_metric_metadata" "Memory_used_1" {
  description  = "The total memory usage of the host system."
  display_name = "Memory used (%)"
  metric_id    = "metric-func:com.dynatrace.extension.f5.bigip.sys.host.memory.used.percent"
  tags         = [ "F5", "Memory" ]
  unit         = "Percent"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
  metric_properties {
    max_value           = 100
    min_value           = 0
    root_cause_relevant = true
    value_type          = "error"
  }
}
