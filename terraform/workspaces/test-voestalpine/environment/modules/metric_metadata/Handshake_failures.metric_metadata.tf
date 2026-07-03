resource "dynatrace_metric_metadata" "Handshake_failures" {
  description        = "The total number of handshake failures."
  display_name       = "Handshake failures"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.client.ssl.stat.handshake.failures.count"
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
    min_value  = 0
    value_type = "error"
  }
}
