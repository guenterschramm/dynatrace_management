resource "dynatrace_metric_metadata" "Return_to_DNS" {
  description        = "The number of times which a resolve was returned to DNS (for resolution) for the specified pool."
  display_name       = "Return to DNS"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool.return_to_dns_count"
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
