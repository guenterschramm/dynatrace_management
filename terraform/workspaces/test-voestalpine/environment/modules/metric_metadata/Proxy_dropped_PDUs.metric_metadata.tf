resource "dynatrace_metric_metadata" "Proxy_dropped_PDUs" {
  description        = "Number of silently dropped PDUs due to the other than a time-out"
  display_name       = "Proxy dropped PDUs"
  metric_id          = "metric-com.dynatrace.extension.snmp-generic-device.drops.proxy.count"
  source_entity_type = "snmp:com_dynatrace_extension_snmp_generic_device"
  unit               = "Count"
}
