resource "dynatrace_metric_metadata" "Uptime_5" {
  description        = "The time, in system ticks (1/100 second), since the last system reboot."
  display_name       = "Uptime"
  metric_id          = "metric-com.dynatrace.extension.network_device.sysuptime"
  source_entity_type = "network:device"
  tags               = [ "NetworkDevice" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Device name"
      key          = "sys.name"
    }
    dimension {
      display_name = "Device address"
      key          = "device.address"
    }
  }
}
