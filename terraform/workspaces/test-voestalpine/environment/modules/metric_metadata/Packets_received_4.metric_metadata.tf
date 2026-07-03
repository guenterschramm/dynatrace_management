resource "dynatrace_metric_metadata" "Packets_received_4" {
  description        = "The number of packets received by the specified virtual server from client-side."
  display_name       = "Packets received"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.pkts.in.count"
  source_entity_type = "f5:virtualserver"
  tags               = [ "F5", "VirtualServer" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Virtual server name"
      key          = "virtualserver.name"
    }
  }
}
