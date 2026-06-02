resource "dynatrace_metric_metadata" "Vlan_Entity" {
  description  = "Used to create Juniper SNMP VLAN Entity"
  display_name = "Vlan Entity"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.vlan"
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
      display_name = "Name"
      key          = "vlan.name"
    }
    dimension {
      display_name = "Id"
      key          = "vlan.id"
    }
    dimension {
      display_name = "Type"
      key          = "vlan.type"
    }
    dimension {
      display_name = "Portgroup Instance"
      key          = "vlan.portgroup.instance"
    }
  }
}
