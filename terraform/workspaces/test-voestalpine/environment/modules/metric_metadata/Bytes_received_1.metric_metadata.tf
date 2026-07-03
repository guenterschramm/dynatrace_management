resource "dynatrace_metric_metadata" "Bytes_received_1" {
  description        = "The number of bytes received on the specified interface."
  display_name       = "Bytes received"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.interface.stat.bytes.in.count"
  source_entity_type = "f5:interface"
  tags               = [ "F5", "Interface" ]
  unit               = "Byte"
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
