resource "dynatrace_metric_metadata" "Total_Files_Received" {
  description  = "The total number of files received by the Web service (since service startup)."
  display_name = "Total Files Received"
  metric_id    = "metric-iis.total.files.received.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
