resource "dynatrace_metric_metadata" "Dropped_outgoing_packets" {
  description        = "The number of packets aged out or with excessive transmission delays due to multiple deferrals on the specified interface."
  display_name       = "Dropped outgoing packets"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.interface.stat.drops.out.count"
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
