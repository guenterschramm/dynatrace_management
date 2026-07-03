resource "dynatrace_metric_metadata" "Reachability" {
  description        = "Device's Reachability (1: Reachable | 0: Not Reachable)"
  display_name       = "Reachability"
  metric_id          = "metric-cisco.cc.device.reachability"
  source_entity_type = "cisco_cc:device"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
    dimension {
      display_name = "Device"
      key          = "device"
    }
    dimension {
      display_name = "Device Type"
      key          = "type"
    }
    dimension {
      display_name = "Device Platform"
      key          = "platform_id"
    }
    dimension {
      display_name = "Device Family"
      key          = "family"
    }
    dimension {
      display_name = "Device Role"
      key          = "role"
    }
    dimension {
      display_name = "Device IP Address"
      key          = "device_ip_address"
    }
    dimension {
      display_name = "Chassis MAC"
      key          = "chassis.mac"
    }
  }
}
