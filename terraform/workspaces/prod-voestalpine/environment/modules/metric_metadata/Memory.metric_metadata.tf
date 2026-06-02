resource "dynatrace_metric_metadata" "Memory" {
  description        = "Device's Memory consumption"
  display_name       = "Memory"
  metric_id          = "metric-cisco.cc.device.memory"
  source_entity_type = "cisco_cc:device"
  unit               = "Percent"
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
      key          = "ip_address"
    }
  }
}
