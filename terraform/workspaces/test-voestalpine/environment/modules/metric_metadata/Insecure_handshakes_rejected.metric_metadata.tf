resource "dynatrace_metric_metadata" "Insecure_handshakes_rejected" {
  description        = "The number of rejected initial handshakes with peers not supporting SSL secure renegotiation."
  display_name       = "Insecure handshakes rejected"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.client.ssl.stat.insecure.handshake.rejects.count"
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
