resource "dynatrace_metric_metadata" "Submitted_Device_Discovery_Query_Tasks" {
  description  = "Number of submitted tasks to run the paged query devices.get_network_device_by_pagination, used to discover devices and collect their attributes."
  display_name = "Submitted Device Discovery Query Tasks"
  metric_id    = "metric-sfm.cisco.cc.device_cache.cache_network_device_by_page.submitted"
  unit         = "Count"
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
