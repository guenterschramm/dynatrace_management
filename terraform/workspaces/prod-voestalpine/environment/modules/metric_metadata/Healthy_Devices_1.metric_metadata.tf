resource "dynatrace_metric_metadata" "Healthy_Devices_1" {
  description        = "Site's Healthy Devices Summary Percentage"
  display_name       = "Healthy Devices"
  metric_id          = "metric-cisco.cc.site.network_device_good_health_percentage"
  source_entity_type = "cisco_cc:site"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
    dimension {
      display_name = "Full Site Name"
      key          = "site_name_hierarchy"
    }
    dimension {
      display_name = "Site Type"
      key          = "site_type"
    }
    dimension {
      display_name = "Site Name"
      key          = "site_name"
    }
    dimension {
      display_name = "Site Id"
      key          = "site_id"
    }
  }
}
