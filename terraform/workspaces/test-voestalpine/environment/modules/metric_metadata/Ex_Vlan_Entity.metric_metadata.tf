resource "dynatrace_metric_metadata" "Ex_Vlan_Entity" {
  description  = "Used to create Juniper SNMP VLAN Entity"
  display_name = "Ex Vlan Entity"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.device.ex.vlan"
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
      key          = "ex.vlan.name"
    }
    dimension {
      display_name = "Type"
      key          = "ex.vlan.type"
    }
    dimension {
      display_name = "Tag"
      key          = "ex.vlan.tag"
    }
    dimension {
      display_name = "Id"
      key          = "ex.vlan.id"
    }
    dimension {
      display_name = "Portgroup Instance"
      key          = "ex.vlan.portgroup.instance"
    }
  }
}
