resource "dynatrace_metric_metadata" "Connections_2" {
  description        = "The total connections from server-side to the specified pool member."
  display_name       = "Connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool_member.stat.server.tot.conns.count"
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
