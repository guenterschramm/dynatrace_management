resource "dynatrace_metric_metadata" "Fallback_lb_requests_1" {
  description        = "The number of times which the fallback load balance method is used for the specified pool."
  display_name       = "Fallback lb requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool.lb_fallback_count"
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
  }
}
