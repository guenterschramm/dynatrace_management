resource "dynatrace_metric_metadata" "_3xx_Responses" {
  description        = "The number of server-side responses in range of 300 to 307 (redirection responses)."
  display_name       = "3xx Responses"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.http.stat.resp3xx.cnt.count"
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
}
