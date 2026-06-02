resource "dynatrace_metric_metadata" "Physical_component_state" {
  description  = "A state metric representing the details of physical components. This is used to collect details about the Cisco device stack. Value is always 1; use the dimensions to view details."
  display_name = "Physical component state"
  metric_id    = "metric-com.dynatrace.extension.snmp-generic-cisco-device.component.state"
  unit         = "NotApplicable"
}
