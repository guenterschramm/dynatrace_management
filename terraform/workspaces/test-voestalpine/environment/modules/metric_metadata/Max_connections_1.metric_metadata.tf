resource "dynatrace_metric_metadata" "Max_connections_1" {
  description        = "The maximum number of connections from client-side to the specified virtual server. This includes queued connections."
  display_name       = "Max connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.max_conns"
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
