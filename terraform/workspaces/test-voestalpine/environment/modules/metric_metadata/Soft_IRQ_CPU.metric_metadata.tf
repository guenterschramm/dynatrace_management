resource "dynatrace_metric_metadata" "Soft_IRQ_CPU" {
  description        = "The average time spent by the specified processor servicing soft interrupts for the system in the last one minute."
  display_name       = "Soft IRQ CPU"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.global.host.cpu.softirq1min"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "CPU" ]
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
  metric_properties {
    max_value  = 100
    min_value  = 0
    value_type = "error"
  }
}
