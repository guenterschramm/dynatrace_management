resource "dynatrace_metric_metadata" "Clients_Count_1" {
  description        = "Cisco Catalyst Client - Clients count"
  display_name       = "Clients Count"
  metric_id          = "metric-cisco.cc.client.client_count.gauge"
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
