resource "dynatrace_metric_metadata" "POST_Requests" {
  description        = "The total number of HTTP post requests."
  display_name       = "POST Requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.http.stat.post.reqs.count"
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
