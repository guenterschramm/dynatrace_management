resource "dynatrace_metric_metadata" "Status" {
  description        = "The current state of the specified interface."
  display_name       = "Status"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.interface.status"
  source_entity_type = "f5:interface"
  tags               = [ "F5", "Interface" ]
  unit               = "Unspecified"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Interface name"
      key          = "interface.name"
    }
    dimension {
      display_name = "Enabled state"
      key          = "interface.enabled"
    }
    dimension {
      display_name = "State"
      key          = "interface.status"
    }
  }
}
