resource "dynatrace_metric_metadata" "Devices" {
  description        = "Site's Devices Summary Count"
  display_name       = "Devices"
  metric_id          = "metric-cisco.cc.site.network_device_count.gauge"
  source_entity_type = "cisco_cc:site"
  unit               = "Count"
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
