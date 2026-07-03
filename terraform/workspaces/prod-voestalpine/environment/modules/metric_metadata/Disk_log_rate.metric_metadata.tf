resource "dynatrace_metric_metadata" "Disk_log_rate" {
  description        = "Disk log rate"
  display_name       = "Disk log rate"
  metric_id          = "metric-fortigate.disk.log.rate"
  source_entity_type = "fortinet:fortigate"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "URL"
      key          = "url"
    }
    dimension {
      display_name = "Alias"
      key          = "alias"
    }
    dimension {
      display_name = "Device Address"
      key          = "device.address"
    }
  }
  metric_properties {
    max_value  = 100
    min_value  = 0
    value_type = "unknown"
  }
}
