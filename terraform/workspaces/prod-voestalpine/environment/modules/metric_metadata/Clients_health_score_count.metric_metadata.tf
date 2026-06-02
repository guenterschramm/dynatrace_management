resource "dynatrace_metric_metadata" "Clients_health_score_count" {
  description        = "Cisco Catalyst Client - Clients health score by score type"
  display_name       = "Clients health score count"
  metric_id          = "metric-cisco.cc.client.health_score_count.gauge"
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
    dimension {
      display_name = "Score Type"
      key          = "score_type"
    }
  }
}
