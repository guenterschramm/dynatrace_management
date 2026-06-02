resource "dynatrace_metric_metadata" "Total_Worker_Process_Ping_Failures" {
  description  = "The number of times that Windows Process Activation Service (WAS) did not receive a response to ping messages sent to a worker process."
  display_name = "Total Worker Process Ping Failures"
  metric_id    = "metric-iis.APPPOOLWAS.TotalWorkerProcessPingFailures"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
