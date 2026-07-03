resource "dynatrace_metric_metadata" "Ephemeral_connections" {
  description        = "The total ephemeral connections to the specified virtual server."
  display_name       = "Ephemeral connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.ephemeral.tot.conns.count"
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
