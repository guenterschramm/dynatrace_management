resource "dynatrace_metric_metadata" "Virtual_server_state" {
  description        = "General state metric for the server. Value is always 1, but dimensions carry all details of a virtual server."
  display_name       = "Virtual server state"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.virtualserver.state"
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
      display_name = "Enabled state"
      key          = "virtualserver.enablestate"
    }
    dimension {
      display_name = "Availability state"
      key          = "virtualserver.availstate"
    }
    dimension {
      display_name = "State detail"
      key          = "virtualserver.statedetail"
    }
    dimension {
      display_name = "Pool name"
      key          = "pool.name"
    }
  }
}
