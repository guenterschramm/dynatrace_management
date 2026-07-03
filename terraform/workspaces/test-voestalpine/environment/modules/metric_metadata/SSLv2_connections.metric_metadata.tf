resource "dynatrace_metric_metadata" "SSLv2_connections" {
  description        = "The total connections for SSL protocol version 2."
  display_name       = "SSLv2 connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.client.ssl.stat.sslv2.count"
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
