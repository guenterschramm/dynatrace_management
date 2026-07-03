resource "dynatrace_metric_metadata" "Preferred_lb_requests_2" {
  description        = "The number of times which the preferred load balance method is used for the specified pool member."
  display_name       = "Preferred lb requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool_member.lb_preferred_count"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "PoolMember" ]
  unit               = "Count"
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
  }
}
