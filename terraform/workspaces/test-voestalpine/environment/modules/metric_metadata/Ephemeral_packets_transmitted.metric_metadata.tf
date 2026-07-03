resource "dynatrace_metric_metadata" "Ephemeral_packets_transmitted" {
  description        = "The number of packets transmitted ephemeral from the specified virtual server."
  display_name       = "Ephemeral packets transmitted"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.ephemeral.pkts.out.count"
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
