resource "dynatrace_metric_metadata" "Sensor_State" {
  description        = "Hardware sensor state within the ESXi Host. 0=Green 1=Gray 2=Yellow 3=Red"
  display_name       = "Sensor State"
  metric_id          = "metric-vmware.host.sensor.state"
  source_entity_type = "vmware:host"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Sensor Name"
      key          = "sensor.name"
    }
    dimension {
      display_name = "Type"
      key          = "sensor.type"
    }
    dimension {
      display_name = "State Description"
      key          = "sensor.state"
    }
  }
}
