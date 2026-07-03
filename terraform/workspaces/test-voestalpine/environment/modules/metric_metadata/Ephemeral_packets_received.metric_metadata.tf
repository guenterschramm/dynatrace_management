resource "dynatrace_metric_metadata" "Ephemeral_packets_received" {
  description        = "The number of packets received ephemeral by the specified virtual server."
  display_name       = "Ephemeral packets received"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.ephemeral.pkts.in.count"
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
