resource "dynatrace_metric_metadata" "Current_number_of_worker_processes" {
  description  = "The current number of worker processes that are running in the application pool."
  display_name = "Current number of worker processes"
  metric_id    = "metric-iis.current.workerProcesses"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
