resource "dynatrace_metric_metadata" "Total_Worker_Process_Startup_Failures" {
  description  = "The number of times that Windows Process Activation Service (WAS) failed to start a worker process."
  display_name = "Total Worker Process Startup Failures"
  metric_id    = "metric-iis.APPPOOLWAS.TotalWorkerProcessStartupFailures"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
