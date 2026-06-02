resource "dynatrace_metric_metadata" "Time_since_the_last_re-start_2" {
  description  = "The time (in milliseconds) since the network management portion of the system was last re-initialized"
  display_name = "Time since the last re-start"
  metric_id    = "metric-func:com.dynatrace.extension.snmp-generic-device.sys.uptime.millis"
  unit         = "MilliSecond"
}
