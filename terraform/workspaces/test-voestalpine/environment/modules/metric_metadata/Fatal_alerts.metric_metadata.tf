resource "dynatrace_metric_metadata" "Fatal_alerts" {
  description        = "The total number of the fatal alerts."
  display_name       = "Fatal alerts"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.client.ssl.stat.fatal.alerts.count"
  source_entity_type = "f5:profile"
  tags               = [ "F5", "Profile", "ClientSSL" ]
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
    min_value           = 0
    root_cause_relevant = true
    value_type          = "error"
  }
}
