resource "dynatrace_metric_metadata" "Health" {
  description        = "Device's Health"
  display_name       = "Health"
  metric_id          = "metric-cisco.cc.device.health"
  source_entity_type = "cisco_cc:device"
  unit               = "State"
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
