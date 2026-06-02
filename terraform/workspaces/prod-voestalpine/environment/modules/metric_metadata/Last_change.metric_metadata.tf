resource "dynatrace_metric_metadata" "Last_change" {
  description        = "The last time, in system ticks (1/100 second), the interface operational state changed."
  display_name       = "Last change"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.lastchange"
  source_entity_type = "network:interface"
  tags               = [ "NetworkInterface" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Device name"
      key          = "sys.name"
    }
    dimension {
      display_name = "Device address"
      key          = "device.address"
    }
    dimension {
      display_name = "Interface name"
      key          = "if.name"
    }
  }
}
