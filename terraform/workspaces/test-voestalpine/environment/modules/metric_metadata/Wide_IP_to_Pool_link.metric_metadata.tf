resource "dynatrace_metric_metadata" "Wide_IP_to_Pool_link" {
  description        = "Relational metric linking F5 DNS (GTM) Pools to a Wide IP"
  display_name       = "Wide IP to Pool link"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.wip.pool_link"
  source_entity_type = "f5:gtm:wip"
  tags               = [ "F5", "GTM", "WideIP", "Pool" ]
  unit               = "NotApplicable"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Wide IP name"
      key          = "wip.name"
    }
    dimension {
      display_name = "Wide IP type"
      key          = "wip.type"
    }
    dimension {
      display_name = "Pool name"
      key          = "pool.name"
    }
    dimension {
      display_name = "Pool type"
      key          = "pool.type"
    }
  }
}
