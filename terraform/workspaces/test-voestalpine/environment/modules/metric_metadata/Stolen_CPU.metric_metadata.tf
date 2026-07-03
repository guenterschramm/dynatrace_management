resource "dynatrace_metric_metadata" "Stolen_CPU" {
  description        = "The average time 'stolen' from the system in the last one minute."
  display_name       = "Stolen CPU"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.global.host.cpu.stolen1m"
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
