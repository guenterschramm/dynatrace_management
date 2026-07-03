resource "dynatrace_metric_metadata" "Dropped_messages" {
  description        = "The number of dropped DNS messages for the specified wide IP."
  display_name       = "Dropped messages"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.wip.dropped_count"
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
