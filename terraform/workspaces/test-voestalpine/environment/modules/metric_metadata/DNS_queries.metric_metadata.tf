resource "dynatrace_metric_metadata" "DNS_queries" {
  description        = "The total number of DNS queries."
  display_name       = "DNS queries"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.profile.queries_count"
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
