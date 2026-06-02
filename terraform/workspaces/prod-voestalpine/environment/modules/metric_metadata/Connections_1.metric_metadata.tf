resource "dynatrace_metric_metadata" "Connections_1" {
  description        = "The total connections from server-side to the specified pool."
  display_name       = "Connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.server.tot.conns.count"
  source_entity_type = "f5:pool"
  tags               = [ "F5", "Pool" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Pool name"
      key          = "pool.name"
    }
  }
}
