resource "dynatrace_metric_metadata" "SERVFAIL_responses" {
  description        = "The number of responses whose return code is SERVFAIL."
  display_name       = "SERVFAIL responses"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.profile.resp_servfail_count"
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
