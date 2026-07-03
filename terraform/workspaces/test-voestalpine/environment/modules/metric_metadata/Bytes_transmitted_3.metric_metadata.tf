resource "dynatrace_metric_metadata" "Bytes_transmitted_3" {
  description        = "The number of bytes sent to client-side from the specified virtual server."
  display_name       = "Bytes transmitted"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.bytes.out.count"
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
