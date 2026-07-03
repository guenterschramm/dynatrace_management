resource "dynatrace_metric_metadata" "Profile_state" {
  description        = "A state metric containing the details of a DNS Profile. The value is always 1, use the dimensions to understand the details."
  display_name       = "Profile state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.profile.state"
  source_entity_type = "f5:gtm:profile"
  tags               = [ "F5", "GTM", "Profile" ]
  unit               = "NotApplicable"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Profile name"
      key          = "profile.name"
    }
    dimension {
      display_name = "Last action"
      key          = "profile.last_action"
    }
    dimension {
      display_name = "Express enabled"
      key          = "profile.express_enabled"
    }
    dimension {
      display_name = "Security enabled"
      key          = "profile.security_enabled"
    }
    dimension {
      display_name = "Cache enabled"
      key          = "profile.cache_enabled"
    }
  }
}
