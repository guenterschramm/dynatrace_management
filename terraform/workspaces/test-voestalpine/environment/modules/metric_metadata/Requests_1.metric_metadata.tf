resource "dynatrace_metric_metadata" "Requests_1" {
  description        = "The number of total requests for the specified wide IP."
  display_name       = "Requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.wip.requests_count"
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
