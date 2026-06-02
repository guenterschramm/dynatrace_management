resource "dynatrace_metric_metadata" "Connection_attempts_per_second" {
  description  = "The rate that connections to the Web service are being attempted."
  display_name = "Connection attempts per second"
  metric_id    = "metric-iis.W3SVC_WebService.ConnectionAttemptsPersec"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
