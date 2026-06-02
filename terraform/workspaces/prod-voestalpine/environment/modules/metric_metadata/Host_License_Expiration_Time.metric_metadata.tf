resource "dynatrace_metric_metadata" "Host_License_Expiration_Time" {
  description  = "Time until the license expires on this host"
  display_name = "Host License Expiration Time"
  metric_id    = "metric-vmware.host.license.expiration"
  unit         = "Second"
}
