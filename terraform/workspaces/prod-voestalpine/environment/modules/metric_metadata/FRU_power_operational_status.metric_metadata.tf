resource "dynatrace_metric_metadata" "FRU_power_operational_status" {
  description        = "The FRU power operational status"
  display_name       = "FRU power operational status"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-cisco-device.fru.power_oper_status"
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
      key          = "fru.power_oper_status"
    }
    dimension {
      display_name = "Administrative status"
      key          = "fru.power_admin_status"
    }
  }
}
