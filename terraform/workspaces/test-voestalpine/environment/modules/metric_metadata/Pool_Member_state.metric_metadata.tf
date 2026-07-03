resource "dynatrace_metric_metadata" "Pool_Member_state" {
  description        = "General state metric for the pool_member. Value is always 1, but dimensions 'Enabled state' and 'Availability state' define the state. The availability state takes the following values: 0 (none/error); 1 (green/available in some capacity); 2 (yellow/not currently available); 3 (red/not available); 4 (blue/availability is unknown); 5 (gray/unlicensed). Enabled state takes values 0 (none), 1 (enabled), 2 (disabled), 3 (disabled by parent)."
  display_name       = "Pool Member state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.pool_member.state"
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
      display_name = "Port"
      key          = "pool_member.port"
    }
    dimension {
      display_name = "Address"
      key          = "pool_member.addr"
    }
    dimension {
      display_name = "Availability state"
      key          = "pool_member.availstate"
    }
    dimension {
      display_name = "Enabled state"
      key          = "pool_member.enablestate"
    }
    dimension {
      display_name = "State detail"
      key          = "pool_member.statedetail"
    }
  }
}
