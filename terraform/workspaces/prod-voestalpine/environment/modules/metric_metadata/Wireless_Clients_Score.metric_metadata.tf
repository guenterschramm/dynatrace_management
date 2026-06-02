resource "dynatrace_metric_metadata" "Wireless_Clients_Score" {
  description        = "Site's Wireless Clients Health Score"
  display_name       = "Wireless Clients Score"
  metric_id          = "metric-cisco.cc.site.client_health_wireless"
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
