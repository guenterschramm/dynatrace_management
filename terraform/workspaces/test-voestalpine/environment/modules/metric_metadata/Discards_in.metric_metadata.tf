resource "dynatrace_metric_metadata" "Discards_in" {
  description        = "The number of discarded packets, inbound to the network interface."
  display_name       = "Discards in"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.in.discards.count"
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
