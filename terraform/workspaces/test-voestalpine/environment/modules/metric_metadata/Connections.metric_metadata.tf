resource "dynatrace_metric_metadata" "Connections" {
  description        = "The number of total connections to the specified virtual server."
  display_name       = "Connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.virtualserver.connections_count"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "VirtualServer" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Virtual server name"
      key          = "virtualserver.name"
    }
    dimension {
      display_name = "Server name"
      key          = "server.name"
    }
  }
}
