resource "dynatrace_metric_metadata" "Recent_Worker_Process_Failures" {
  description  = "The number of times that worker processes for the application pool failed during the rapid-fail protection interval."
  display_name = "Recent Worker Process Failures"
  metric_id    = "metric-iis.APPPOOLWAS.RecentWorkerProcessFailures"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
