resource "dynatrace_metric_metadata" "Dropped_messages_1" {
  description        = "The number of dropped DNS messages for the specified pool."
  display_name       = "Dropped messages"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.pool.dropped_count"
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
