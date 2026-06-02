resource "dynatrace_metric_metadata" "Entity" {
  description  = "Used to create Juniper SNMP VLAN Entity"
  display_name = "Entity"
  metric_id    = "metric-com.dynatrace.extension.juniper.generic.vlan.entity"
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
      display_name = "Egressports"
      key          = "vlan.egressports"
    }
    dimension {
      display_name = "Row Status"
      key          = "vlan.row_status"
    }
  }
}
