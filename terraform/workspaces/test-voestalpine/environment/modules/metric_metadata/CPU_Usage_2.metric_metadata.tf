resource "dynatrace_metric_metadata" "CPU_Usage_2" {
  description        = "The CPU usage in percentage for the specified virtual server."
  display_name       = "CPU Usage"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.virtualserver.cpu_usage_count"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "VirtualServer" ]
  unit               = "Percent"
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
