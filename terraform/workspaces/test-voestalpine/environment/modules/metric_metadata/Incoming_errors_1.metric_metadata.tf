resource "dynatrace_metric_metadata" "Incoming_errors_1" {
  description        = "The number of received packets that are either undersized, oversized, or have FCS errors by the specified interface."
  display_name       = "Incoming errors"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.interface.stat.errors.in.count"
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
