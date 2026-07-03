resource "dynatrace_metric_metadata" "Pool_member_state_1" {
  description        = "State metric which captures details of F5 DNS (GTM) Pool Members. Value is always 1."
  display_name       = "Pool member state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool_member.state"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "PoolMember" ]
  unit               = "NotApplicable"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Pool name"
      key          = "pool.name"
    }
    dimension {
      display_name = "Pool type"
      key          = "pool.type"
    }
    dimension {
      display_name = "Server name"
      key          = "server.name"
    }
    dimension {
      display_name = "Virtual server name"
      key          = "virtualserver.name"
    }
    dimension {
      display_name = "IP Address"
      key          = "pool_member.ip"
    }
    dimension {
      display_name = "LB ratio"
      key          = "pool_member.lb_ratio"
    }
    dimension {
      display_name = "Order"
      key          = "pool_member.order"
    }
    dimension {
      display_name = "Available state"
      key          = "pool_member.available"
    }
    dimension {
      display_name = "Enabled state"
      key          = "pool_member.enabled"
    }
    dimension {
      display_name = "State detail"
      key          = "pool_member.state_detail"
    }
  }
}
