resource "dynatrace_metric_metadata" "Maximum_number_of_worker_processes" {
  description  = "The maximum number of worker processes that have been created for the application pool since Windows Process Activation Service (WAS) started."
  display_name = "Maximum number of worker processes"
  metric_id    = "metric-iis.maximum.workerProcesses"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
