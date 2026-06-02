resource "dynatrace_metric_metadata" "Service_Uptime" {
  description  = "The length of time the Web Service has been running."
  display_name = "Service Uptime"
  metric_id    = "metric-iis.service.uptime"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Second"
}
