resource "dynatrace_metric_metadata" "Outgoing_errors_1" {
  description        = "The number of excessive collisions, incremented for each frame that experienced 16 collisions during transmission and was aborted on the specified interface."
  display_name       = "Outgoing errors"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.interface.stat.errors.out.count"
  source_entity_type = "f5:interface"
  tags               = [ "F5", "Interface" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Interface name"
      key          = "interface.name"
    }
  }
  metric_properties {
    min_value           = 0
    root_cause_relevant = true
    value_type          = "error"
  }
}
