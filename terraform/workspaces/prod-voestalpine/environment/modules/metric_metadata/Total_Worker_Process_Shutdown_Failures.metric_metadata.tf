resource "dynatrace_metric_metadata" "Total_Worker_Process_Shutdown_Failures" {
  description  = "The number of times that Windows Process Activation Service (WAS) failed to shut down a worker process."
  display_name = "Total Worker Process Shutdown Failures"
  metric_id    = "metric-iis.APPPOOLWAS.TotalWorkerProcessShutdownFailures"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
