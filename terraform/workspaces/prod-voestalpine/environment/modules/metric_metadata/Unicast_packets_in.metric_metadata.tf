resource "dynatrace_metric_metadata" "Unicast_packets_in" {
  description        = "The number of unicast packets, inbound to the network interface."
  display_name       = "Unicast packets in"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.in.ucast_pkts.count"
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
