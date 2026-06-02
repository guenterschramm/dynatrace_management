resource "dynatrace_metric_metadata" "Unicast_packets_out" {
  description        = "The number of unicast packets, outbound from the network interface."
  display_name       = "Unicast packets out"
  metric_id          = "metric-com.dynatrace.extension.network_device.if.out.ucast_pkts.count"
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
