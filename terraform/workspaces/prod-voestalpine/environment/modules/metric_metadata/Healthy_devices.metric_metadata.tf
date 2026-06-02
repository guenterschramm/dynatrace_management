resource "dynatrace_metric_metadata" "Healthy_devices" {
  description        = "Cisco Catalyst Network topology - Healthy devices"
  display_name       = "Healthy devices"
  metric_id          = "metric-cisco.cc.center.healthy_devices"
  source_entity_type = "cisco_cc:center"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
  }
}
