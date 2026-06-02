resource "dynatrace_metric_metadata" "Health_score_Center" {
  description        = "Cisco Catalyst Network topology - Overall health score"
  display_name       = "Health score (Center)"
  metric_id          = "metric-cisco.cc.center.health_score"
  source_entity_type = "cisco_cc:center"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
  }
}
