resource "dynatrace_metric_metadata" "Packets_transmitted_1" {
  description        = "The number of packets transmitted out of the specified interface."
  display_name       = "Packets transmitted"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.interface.stat.pkts.out.count"
  source_entity_type = "f5:interface"
  tags               = [ "F5", "Interface" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Interface name"
      key          = "interface.name"
    }
  }
}
