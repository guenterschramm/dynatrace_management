resource "dynatrace_metric_metadata" "Submitted_Interface_Discovery_Query_Tasks" {
  description  = "Number of submitted tasks to run the paged query devices.get_all_interfaces, used to discover interfaces and collect their attributes."
  display_name = "Submitted Interface Discovery Query Tasks"
  metric_id    = "metric-sfm.cisco.cc.interface.cache_ifaces_by_page.submitted"
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
      display_name = "Data Collection Frequency"
      key          = "frequency"
    }
    dimension {
      display_name = "Interfaces Discovery Frequency"
      key          = "discovery_frequency"
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
