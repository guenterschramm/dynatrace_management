resource "dynatrace_metric_metadata" "CNAME_resolutions" {
  description        = "The number of times which a query is resolved by the CNAME of pools associated with the specified Wide IP."
  display_name       = "CNAME resolutions"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.wip.cname_resolutions_count"
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
