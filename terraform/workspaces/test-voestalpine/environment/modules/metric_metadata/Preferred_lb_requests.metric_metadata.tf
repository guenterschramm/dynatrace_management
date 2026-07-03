resource "dynatrace_metric_metadata" "Preferred_lb_requests" {
  description        = "The number of times which the preferred load balance method is used for the specified wide IP."
  display_name       = "Preferred lb requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.wip.lb_preferred_count"
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
