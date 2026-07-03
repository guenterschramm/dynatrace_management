resource "dynatrace_metric_metadata" "Preferred_lb_requests_1" {
  description        = "The number of times which the preferred load balance method is used for the specified pool."
  display_name       = "Preferred lb requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool.lb_preferred_count"
  source_entity_type = "f5:gtm:pool"
  tags               = [ "F5", "GTM", "Pool" ]
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
  }
}
