resource "dynatrace_metric_metadata" "Return_to_DNS_1" {
  description        = "The number of times which a resolve was returned to DNS (for resolution) for the specified wide IP."
  display_name       = "Return to DNS"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.wip.return_to_dns_count"
  source_entity_type = "f5:gtm:wip"
  tags               = [ "F5", "GTM", "WideIP" ]
  unit               = "Count"
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
  }
}
