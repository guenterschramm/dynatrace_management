resource "dynatrace_metric_metadata" "Connectivity" {
  description        = "Connectivity"
  display_name       = "Connectivity"
  metric_id          = "metric-fortigate.connectivity"
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
      display_name = "Version"
      key          = "version"
    }
    dimension {
      display_name = "Serial"
      key          = "serial"
    }
    dimension {
      display_name = "Device Address"
      key          = "device.address"
    }
  }
  metric_properties {
    max_value  = 100
    min_value  = 0
    value_type = "score"
  }
}
