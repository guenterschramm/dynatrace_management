resource "dynatrace_metric_metadata" "GET_Requests" {
  description        = "The total number of HTTP get requests."
  display_name       = "GET Requests"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.http.stat.get.reqs.count"
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
