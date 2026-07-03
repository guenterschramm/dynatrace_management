resource "dynatrace_metric_metadata" "Virtual_server_state_1" {
  description        = "State metric describing the details of a DNS virtual server. The value is always 1, use the dimensions to understand the details."
  display_name       = "Virtual server state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.gtm.virtualserver.state"
  source_entity_type = "f5:gtm:virtualserver"
  tags               = [ "F5", "GTM", "VirtualServer" ]
  unit               = "NotApplicable"
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
    dimension {
      display_name = "Enabled"
      key          = "vs.enabled"
    }
    dimension {
      display_name = "State"
      key          = "vs.available"
    }
    dimension {
      display_name = "State detail"
      key          = "vs.state_detail"
    }
  }
}
