resource "dynatrace_metric_metadata" "Packets_transmitted_3" {
  description        = "The number of packets sent to client-side from the specified virtual server."
  display_name       = "Packets transmitted"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.pkts.out.count"
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
