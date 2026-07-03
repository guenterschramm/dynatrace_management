resource "dynatrace_metric_metadata" "Current_connections_4" {
  description        = "The current connections from client-side to the specified virtual server."
  display_name       = "Current connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.current_conns"
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
