resource "dynatrace_metric_metadata" "Dropped_incoming_packets" {
  description        = "The number of packets dropped on ingress for various reasons on the specified interface."
  display_name       = "Dropped incoming packets"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.interface.stat.drops.in.count"
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
