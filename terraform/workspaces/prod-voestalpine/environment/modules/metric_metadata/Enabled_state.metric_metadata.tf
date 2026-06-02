resource "dynatrace_metric_metadata" "Enabled_state" {
  description        = "Simple state indicating whether the specified virtual server is enabled or not. Value is always 1. State dimension takes value 0 (disabled) or 1 (enabled)"
  display_name       = "Enabled state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.enabled"
  source_entity_type = "f5:virtualserver"
  tags               = [ "F5", "VirtualServer" ]
  unit               = "Unspecified"
  dimensions {
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
    dimension {
      display_name = "Virtual server name"
      key          = "virtualserver.name"
    }
    dimension {
      display_name = "Address"
      key          = "virtualserver.addr"
    }
    dimension {
      display_name = "Port"
      key          = "virtualserver.port"
    }
    dimension {
      display_name = "Type"
      key          = "virtualserver.type"
    }
    dimension {
      display_name = "SNAT type"
      key          = "virtualserver.snat.type"
    }
    dimension {
      display_name = "SNAT pool name"
      key          = "virtualserver.snatpool.name"
    }
    dimension {
      display_name = "State"
      key          = "virtualserver.enabled"
    }
    dimension {
      display_name = "Pool name"
      key          = "pool.name"
    }
  }
}
