resource "dynatrace_metric_metadata" "Queued_connections" {
  description        = "The number of connections currently in queue"
  display_name       = "Queued connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool.stat.server.queued_conns"
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
