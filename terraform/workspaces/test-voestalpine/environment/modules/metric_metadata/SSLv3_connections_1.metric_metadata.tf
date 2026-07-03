resource "dynatrace_metric_metadata" "SSLv3_connections_1" {
  description        = "The total connections for SSL protocol version 3."
  display_name       = "SSLv3 connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.server.ssl.stat.sslv3.count"
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
