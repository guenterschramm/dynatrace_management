resource "dynatrace_metric_metadata" "Device_Issues" {
  description        = "Pending Device Issues"
  display_name       = "Device Issues"
  metric_id          = "metric-cisco.cc.device.issue_count.gauge"
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
      key          = "ip_address"
    }
  }
}
