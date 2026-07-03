resource "dynatrace_metric_metadata" "Slow_connections_killed" {
  description        = "The number of slow client-side connections that have been killed on the specified virtual server."
  display_name       = "Slow connections killed"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.stat.client.slow.killed.count"
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
