resource "dynatrace_metric_metadata" "Total_App_Pool_Recycles" {
  description  = "The number of times that the application pool has been recycled since Windows Process Activation Service (WAS) started."
  display_name = "Total App Pool Recycles"
  metric_id    = "metric-iis.total.applicationPool.recycles.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
