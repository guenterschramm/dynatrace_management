resource "dynatrace_metric_metadata" "Healthy_Clients" {
  description        = "Site's Healthy Clients Summary Percentage"
  display_name       = "Healthy Clients"
  metric_id          = "metric-cisco.cc.site.client_good_health_percentage"
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
