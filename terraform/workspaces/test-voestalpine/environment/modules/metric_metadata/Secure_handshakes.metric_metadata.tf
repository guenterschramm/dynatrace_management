resource "dynatrace_metric_metadata" "Secure_handshakes" {
  description        = "The number of handshakes, including mid-stream re-negotiations, performed with peers supporting SSL secure renegotiation."
  display_name       = "Secure handshakes"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.client.ssl.stat.secure.handshakes.count"
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
}
