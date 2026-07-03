resource "dynatrace_metric_metadata" "NXDOMAIN_responses" {
  description        = "The number of responses whose return code is NXDOMAIN."
  display_name       = "NXDOMAIN responses"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.profile.resp_nxdomain_count"
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
