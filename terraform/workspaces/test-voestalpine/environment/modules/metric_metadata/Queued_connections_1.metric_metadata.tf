resource "dynatrace_metric_metadata" "Queued_connections_1" {
  description        = "The number of connections currently in queue."
  display_name       = "Queued connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool_member.stat.server.queued_conns"
  source_entity_type = "f5:pool:member"
  tags               = [ "F5", "PoolMember" ]
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
    dimension {
      display_name = "Pool Member name"
      key          = "pool_member.name"
    }
    dimension {
      display_name = "Port"
      key          = "pool_member.port"
    }
    dimension {
      display_name = "Address"
      key          = "pool_member.addr"
    }
  }
}
