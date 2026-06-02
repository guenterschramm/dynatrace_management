resource "dynatrace_metric_metadata" "Clients_health_score" {
  description        = "Cisco Catalyst Client - Overall client health score"
  display_name       = "Clients health score"
  metric_id          = "metric-cisco.cc.client.health_score"
  source_entity_type = "cisco_cc:center"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
    dimension {
      display_name = "Site ID"
      key          = "site_id"
    }
    dimension {
      display_name = "Client Type"
      key          = "client_type"
    }
  }
}
