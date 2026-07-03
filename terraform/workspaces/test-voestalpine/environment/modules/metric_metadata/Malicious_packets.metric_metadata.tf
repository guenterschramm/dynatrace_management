resource "dynatrace_metric_metadata" "Malicious_packets" {
  description        = "The number of malicious packets received."
  display_name       = "Malicious packets"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.profile.malicious_count"
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
