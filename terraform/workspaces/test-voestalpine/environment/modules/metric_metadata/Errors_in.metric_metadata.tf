resource "dynatrace_metric_metadata" "Errors_in" {
  description        = "The number of errors, inboud to the network interface."
  display_name       = "Errors in"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.in.errors.count"
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
