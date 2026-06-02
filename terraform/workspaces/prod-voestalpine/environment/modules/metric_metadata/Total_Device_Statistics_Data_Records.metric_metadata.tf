resource "dynatrace_metric_metadata" "Total_Device_Statistics_Data_Records" {
  description  = "Number of device statistics data records in the responses of all paged queries devices.devices, used to collect device metrics."
  display_name = "Total Device Statistics Data Records"
  metric_id    = "metric-sfm.cisco.cc.endpoint.get_device_statistics_dict.reported_devices"
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
      display_name = "Endpoint IP"
      key          = "endpoint_ip"
    }
    dimension {
      display_name = "Center (Configuration Name)"
      key          = "center"
    }
  }
}
