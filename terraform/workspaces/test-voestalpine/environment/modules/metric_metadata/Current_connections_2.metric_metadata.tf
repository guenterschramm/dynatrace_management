resource "dynatrace_metric_metadata" "Current_connections_2" {
  description        = "The current number of connections from server-side to the specified pool."
  display_name       = "Current connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.server.current_conns"
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
