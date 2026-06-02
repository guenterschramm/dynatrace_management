resource "dynatrace_metric_metadata" "Wireless_Clients" {
  description        = "Site's Wireless Clients Summary Count"
  display_name       = "Wireless Clients"
  metric_id          = "metric-cisco.cc.site.wireless_client_count.gauge"
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
