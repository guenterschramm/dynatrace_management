resource "dynatrace_metric_metadata" "Interfaces_Count_Query_Duration" {
  description  = "Duration of the query devices.get_device_interface_count, used to retrieve number of interfaces"
  display_name = "Interfaces Count Query Duration"
  metric_id    = "metric-sfm.cisco.cc.devices.get_device_interface_count.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Configuration Name (Center)"
      key          = "config_name"
    }
    dimension {
      display_name = "Center Endpoint URL"
      key          = "endpoint_url"
    }
    dimension {
      display_name = "Data Collection Frequency"
      key          = "frequency"
    }
    dimension {
      display_name = "Endpoint IP"
      key          = "endpoint_ip"
    }
    dimension {
      display_name = "Center (Configuration Name)"
      key          = "center"
    }
  }
}
