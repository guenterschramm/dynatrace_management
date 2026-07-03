resource "dynatrace_metric_metadata" "Bits_received" {
  description        = "The number of bits per second received by the specified virtual server."
  display_name       = "Bits received"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.virtualserver.bits_persec_in_count"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "VirtualServer" ]
  unit               = "BitPerSecond"
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
