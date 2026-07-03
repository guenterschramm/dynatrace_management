resource "dynatrace_metric_metadata" "User_CPU" {
  description        = "The average time spent by the specified processor in user context for the system in the last one minute."
  display_name       = "User CPU"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.global.host.cpu.user1m"
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
    max_value           = 100
    min_value           = 0
    root_cause_relevant = true
    value_type          = "error"
  }
}
