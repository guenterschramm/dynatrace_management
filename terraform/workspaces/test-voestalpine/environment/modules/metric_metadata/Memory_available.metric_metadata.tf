resource "dynatrace_metric_metadata" "Memory_available" {
  description        = "The memory available in bytes for the specified virtual server."
  display_name       = "Memory available"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.virtualserver.memory_available_count"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "VirtualServer" ]
  unit               = "Byte"
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
