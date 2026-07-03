resource "dynatrace_metric_metadata" "Bytes_received_3" {
  description        = "The number of bytes received by the specified virtual server from client-side."
  display_name       = "Bytes received"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.bytes.in.count"
  source_entity_type = "f5:virtualserver"
  tags               = [ "F5", "VirtualServer" ]
  unit               = "Byte"
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
