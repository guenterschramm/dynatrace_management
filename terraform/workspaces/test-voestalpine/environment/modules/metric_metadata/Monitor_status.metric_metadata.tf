resource "dynatrace_metric_metadata" "Monitor_status" {
  description        = "The hierarchical load balance state for the specified node address, including parent status. Value is always 1. Status dimension takes values: unchecked(0), checking(1), inband(2), up(3), addr-down(18), down(19), forced-down(20), maint(21), irule-down(22), inband-down(23), down-manual-resume(24)"
  display_name       = "Monitor status"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool_member.monitor.status"
  source_entity_type = "f5:pool:member"
  tags               = [ "F5", "PoolMember" ]
  unit               = "Unspecified"
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
      display_name = "Address"
      key          = "pool_member.addr"
    }
    dimension {
      display_name = "Port"
      key          = "pool_member.port"
    }
    dimension {
      display_name = "Ratio"
      key          = "pool_member.ratio"
    }
    dimension {
      display_name = "Weight"
      key          = "pool_member.weight"
    }
    dimension {
      display_name = "Priority"
      key          = "pool_member.priority"
    }
    dimension {
      display_name = "Dynamic ratio"
      key          = "pool_member.dynamicratio"
    }
    dimension {
      display_name = "Status"
      key          = "pool_member.monitor_status"
    }
  }
}
