resource "dynatrace_metric_metadata" "Connection_attempts_rate" {
  description  = "Rate at which connection attempts are being made for this site"
  display_name = "Connection attempts rate"
  metric_id    = "metric-iis.HTTPServiceUrlGroups.ConnectionAttempts"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
