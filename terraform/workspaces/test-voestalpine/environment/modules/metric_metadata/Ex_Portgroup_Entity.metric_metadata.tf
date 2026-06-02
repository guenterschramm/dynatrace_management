resource "dynatrace_metric_metadata" "Ex_Portgroup_Entity" {
  description  = "Used to create Juniper SNMP Portgroup Entity"
  display_name = "Ex Portgroup Entity"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.ex.vlan.portgroup"
  unit         = "Count"
  dimensions {
    dimension {
      display_name = "Device.address"
      key          = "device.address"
    }
    dimension {
      display_name = "Device.port"
      key          = "device.port"
    }
    dimension {
      display_name = "System.contact"
      key          = "system.contact"
    }
    dimension {
      display_name = "System.name"
      key          = "system.name"
    }
    dimension {
      display_name = "System.location"
      key          = "system.location"
    }
    dimension {
      display_name = "Portgroup Index"
      key          = "ex.vlan.portgroup.idx"
    }
    dimension {
      display_name = "Portgroup Port"
      key          = "ex.vlan.portgroup.port"
    }
    dimension {
      display_name = "Portgroup Status"
      key          = "ex.vlan.portgroup.status"
    }
    dimension {
      display_name = "Portgroup Access Mode"
      key          = "ex.vlan.portgroup.access.mode"
    }
  }
}
