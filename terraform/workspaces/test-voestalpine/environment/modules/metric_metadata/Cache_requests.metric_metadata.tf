resource "dynatrace_metric_metadata" "Cache_requests" {
  description        = "The number of requests sent to the DNS cache."
  display_name       = "Cache requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.profile.to_cache_count"
  source_entity_type = "f5:gtm:profile"
  tags               = [ "F5", "GTM", "Profile" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Profile name"
      key          = "profile.name"
    }
  }
}
