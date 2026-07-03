resource "dynatrace_metric_metadata" "TLSv1_2_connections" {
  description        = "The total connections for SSL TLS protocol version 1.2."
  display_name       = "TLSv1.2 connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.client.ssl.stat.tlsv12.count"
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
