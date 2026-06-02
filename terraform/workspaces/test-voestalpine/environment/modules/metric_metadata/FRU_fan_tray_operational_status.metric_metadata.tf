resource "dynatrace_metric_metadata" "FRU_fan_tray_operational_status" {
  description        = "The operational state of the fan or fan tray"
  display_name       = "FRU fan tray operational status"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.fru.fan_tray_oper_status"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_cisco_device"
  unit               = "State"
  dimensions {
    dimension {
      display_name = "Name"
      key          = "entity.name"
    }
    dimension {
      display_name = "Description"
      key          = "entity.description"
    }
    dimension {
      display_name = "Operational status"
      key          = "fan_tray.oper_status"
    }
  }
}
