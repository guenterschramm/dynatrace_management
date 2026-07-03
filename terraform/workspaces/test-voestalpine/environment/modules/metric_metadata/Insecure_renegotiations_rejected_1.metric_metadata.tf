resource "dynatrace_metric_metadata" "Insecure_renegotiations_rejected_1" {
  description        = "The number of rejected renegotiation attempts by peers not supporting SSL secure renegotiation."
  display_name       = "Insecure renegotiations rejected"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.server.ssl.stat.insecure.renegotiation.rejects.count"
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
}
