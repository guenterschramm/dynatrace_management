resource "dynatrace_metric_metadata" "Total_App_Pool_Uptime" {
  description  = "The length of time, in seconds, that the application pool has been running since Windows Process Activation Service (WAS) started."
  display_name = "Total App Pool Uptime"
  metric_id    = "metric-iis.total.applicationPool.uptime"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Second"
}
