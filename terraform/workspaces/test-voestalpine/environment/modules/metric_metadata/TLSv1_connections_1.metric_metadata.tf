resource "dynatrace_metric_metadata" "TLSv1_connections_1" {
  description        = "The total connections for SSL TLS protocol version 1."
  display_name       = "TLSv1 connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.server.ssl.stat.tlsv1.count"
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
