resource "dynatrace_metric_metadata" "Time_Since_Last_Worker_Process_Failure" {
  description  = "The length of time, in seconds, since the last worker process failure occurred for the application pool."
  display_name = "Time Since Last Worker Process Failure"
  metric_id    = "metric-iis.timeSinceLast.workerProcess.failure"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Second"
}
