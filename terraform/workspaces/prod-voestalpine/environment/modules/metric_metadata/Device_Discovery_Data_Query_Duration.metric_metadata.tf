resource "dynatrace_metric_metadata" "Device_Discovery_Data_Query_Duration" {
  description  = "Duration of the paged query devices.get_network_device_by_pagination, used to discover devices and collect their attributes."
  display_name = "Device Discovery Data Query Duration"
  metric_id    = "metric-sfm.cisco.cc.devices.get_network_device_by_pagination_range.duration"
  unit         = "Seconds"
  dimensions {
    dimension {
      display_name = "Query Pagination Offset"
      key          = "offset"
    }
    dimension {
      display_name = "Query Page Size"
      key          = "page_size"
    }
    dimension {
      display_name = "Configuration Name (Center)"
      key          = "config_name"
    }
    dimension {
      display_name = "Center Endpoint URL"
      key          = "endpoint_url"
    }
    dimension {
      display_name = "Devices Discovery Frequency"
      key          = "discovery_frequency"
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
