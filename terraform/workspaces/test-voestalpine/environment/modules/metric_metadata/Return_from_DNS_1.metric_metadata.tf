resource "dynatrace_metric_metadata" "Return_from_DNS_1" {
  description        = "The number of times which a resolve was returned from DNS for the specified pool."
  display_name       = "Return from DNS"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool.return_from_dns_count"
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
