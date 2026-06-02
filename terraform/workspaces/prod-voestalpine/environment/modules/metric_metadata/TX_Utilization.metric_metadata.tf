resource "dynatrace_metric_metadata" "TX_Utilization" {
  display_name       = "TX Utilization"
  metric_id          = "metric-cisco.cc.interface.txUtilization"
  source_entity_type = "cisco_cc:interface"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
    dimension {
      display_name = "Device Name"
      key          = "device"
    }
    dimension {
      display_name = "Device Family"
      key          = "family"
    }
    dimension {
      display_name = "Device Id"
      key          = "device_id"
    }
    dimension {
      display_name = "Interface Name"
      key          = "interface"
    }
    dimension {
      display_name = "Interface Id"
      key          = "interface_id"
    }
    dimension {
      display_name = "Speed"
      key          = "if_speed_text"
    }
    dimension {
      display_name = "Admin Status"
      key          = "admin_status"
    }
    dimension {
      display_name = "Operational Status"
      key          = "oper_status"
    }
    dimension {
      display_name = "MAC Address"
      key          = "mac.address"
    }
    dimension {
      display_name = "Interface Index"
      key          = "if_index"
    }
  }
}
