resource "dynatrace_metric_metadata" "_4xx_Responses" {
  description        = "The number of server-side responses in range of 400 to 417 (client errors)."
  display_name       = "4xx Responses"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.http.stat.resp4xx.cnt.count"
  source_entity_type = "f5:profile"
  tags               = [ "F5", "Profile", "HTTP" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Profile name"
      key          = "profile.name"
    }
    dimension {
      display_name = "Type"
      key          = "profile.type"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
