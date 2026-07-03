resource "dynatrace_metric_metadata" "Evicted_connections" {
  description        = "The number of client-side connections that have been evicted on the specified virtual server."
  display_name       = "Evicted connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.evicted.conns.count"
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
