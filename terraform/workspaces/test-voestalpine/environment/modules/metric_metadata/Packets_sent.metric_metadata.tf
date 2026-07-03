resource "dynatrace_metric_metadata" "Packets_sent" {
  description        = "The number of packets per second received by the specified virtual server."
  display_name       = "Packets sent"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.virtualserver.pkts_persec_out_count"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "VirtualServer" ]
  unit               = "PerSecond"
  dimensions {
    dimension {
      display_name = "BIG-IP instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Virtual server name"
      key          = "virtualserver.name"
    }
    dimension {
      display_name = "Server name"
      key          = "server.name"
    }
  }
}
