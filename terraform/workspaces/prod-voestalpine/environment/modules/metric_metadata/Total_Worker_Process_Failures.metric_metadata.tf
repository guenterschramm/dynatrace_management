resource "dynatrace_metric_metadata" "Total_Worker_Process_Failures" {
  description  = "The number of times that worker processes have crashed since the application pool was started."
  display_name = "Total Worker Process Failures"
  metric_id    = "metric-iis.APPPOOLWAS.TotalWorkerProcessFailures"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
