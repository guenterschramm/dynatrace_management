resource "dynatrace_metric_metadata" "Connections_3" {
  description        = "The total connections from client-side to the specified virtual server."
  display_name       = "Connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.tot.conns.count"
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
