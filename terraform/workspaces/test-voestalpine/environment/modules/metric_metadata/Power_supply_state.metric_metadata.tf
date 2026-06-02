resource "dynatrace_metric_metadata" "Power_supply_state" {
  description  = "A state metric representing the details of power supplies on the device. Value is always 1; use the dimensions to understand the status."
  display_name = "Power supply state"
  metric_id    = "metric-com.dynatrace.extension.snmp-generic-cisco-device.power_supply.state"
  unit         = "NotApplicable"
}
