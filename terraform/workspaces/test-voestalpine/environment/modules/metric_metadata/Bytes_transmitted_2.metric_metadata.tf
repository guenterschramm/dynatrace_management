resource "dynatrace_metric_metadata" "Bytes_transmitted_2" {
  description        = "The number of bytes sent to server-side from the specified pool member."
  display_name       = "Bytes transmitted"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool_member.stat.server.bytes.out.count"
  source_entity_type = "f5:pool:member"
  tags               = [ "F5", "PoolMember" ]
  unit               = "Byte"
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
