resource "dynatrace_metric_metadata" "Unique_Clients_Count" {
  description        = "Cisco Catalyst Client - Unique Clients Count"
  display_name       = "Unique Clients Count"
  metric_id          = "metric-cisco.cc.client.client_unique_count.gauge"
  source_entity_type = "cisco_cc:center"
  unit               = "Count"
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
