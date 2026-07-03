resource "dynatrace_metric_metadata" "Dropped_messages_2" {
  description        = "The number of packets dropped (not sent to GTM, DNS-Express, DNSSEC, DNS64, or Backend DNS (e.g. BIND))."
  display_name       = "Dropped messages"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.profile.drops_count"
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
