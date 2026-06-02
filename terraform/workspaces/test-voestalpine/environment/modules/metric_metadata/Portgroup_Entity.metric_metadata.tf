resource "dynatrace_metric_metadata" "Portgroup_Entity" {
  description  = "Used to create Juniper SNMP Portgroup Entity"
  display_name = "Portgroup Entity"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.vlan.portgroup"
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
      key          = "vlan.portgroup.idx"
    }
    dimension {
      display_name = "Portgroup Port"
      key          = "vlan.portgroup.port"
    }
    dimension {
      display_name = "Portgroup Status"
      key          = "vlan.portgroup.status"
    }
  }
}
