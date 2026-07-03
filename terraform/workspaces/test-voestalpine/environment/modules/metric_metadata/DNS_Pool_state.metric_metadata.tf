resource "dynatrace_metric_metadata" "DNS_Pool_state" {
  description        = "State metric which captures details of DNS (GTM) Pools. Value is always 1."
  display_name       = "DNS Pool state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool.state"
  source_entity_type = "f5:gtm:pool"
  tags               = [ "F5", "GTM", "Pool" ]
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
      display_name = "Pool TTL"
      key          = "pool.ttl"
    }
    dimension {
      display_name = "Pool LB mode"
      key          = "pool.lb_mode"
    }
    dimension {
      display_name = "Pool alternate LB"
      key          = "pool.lb_alternate"
    }
    dimension {
      display_name = "Pool fallback LB"
      key          = "pool.lb_fallback"
    }
    dimension {
      display_name = "Pool fallback IP"
      key          = "pool.fallback_ip"
    }
    dimension {
      display_name = "Available state"
      key          = "pool.available"
    }
    dimension {
      display_name = "Enabled state"
      key          = "pool.enabled"
    }
    dimension {
      display_name = "State detail"
      key          = "pool.state_detail"
    }
  }
}
