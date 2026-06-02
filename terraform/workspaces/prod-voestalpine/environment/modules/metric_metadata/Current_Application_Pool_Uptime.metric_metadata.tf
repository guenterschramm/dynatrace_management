resource "dynatrace_metric_metadata" "Current_Application_Pool_Uptime" {
  description  = "The length of time, in seconds, that the application pool has been running since it was started."
  display_name = "Current Application Pool Uptime"
  metric_id    = "metric-iis.current.applicationPool.uptime"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Second"
}
