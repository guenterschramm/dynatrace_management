resource "dynatrace_metric_metadata" "Unhealthy_devices" {
  description        = "Cisco Catalyst Network topology - Unhealthy devices"
  display_name       = "Unhealthy devices"
  metric_id          = "metric-cisco.cc.center.unhealthy_devices"
  source_entity_type = "cisco_cc:center"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Center"
      key          = "center"
    }
  }
}
