resource "dynatrace_metric_metadata" "_2xx_Responses" {
  description        = "The number of server-side responses in range of 200 to 206 (successful responses)"
  display_name       = "2xx Responses"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.http.stat.resp2xx.cnt.count"
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
    value_type = "score"
  }
}
