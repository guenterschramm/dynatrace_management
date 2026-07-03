resource "dynatrace_metric_metadata" "Native_connections_1" {
  description        = "The total number of concurrent native connections with established SSL sessions being maintained by the filter."
  display_name       = "Native connections"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.profile.server.ssl.stat.tot.native.conns.count"
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
