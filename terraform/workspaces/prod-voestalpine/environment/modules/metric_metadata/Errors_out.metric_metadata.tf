resource "dynatrace_metric_metadata" "Errors_out" {
  description        = "The number of errors, outbound from the network interface."
  display_name       = "Errors out"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.out.errors.count"
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
