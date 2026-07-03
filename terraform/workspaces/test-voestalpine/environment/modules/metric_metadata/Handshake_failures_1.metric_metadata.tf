resource "dynatrace_metric_metadata" "Handshake_failures_1" {
  description        = "The total number of handshake failures."
  display_name       = "Handshake failures"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.server.ssl.stat.handshake.failures.count"
  source_entity_type = "f5:profile"
  tags               = [ "F5", "Profile", "ServerSSL" ]
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
