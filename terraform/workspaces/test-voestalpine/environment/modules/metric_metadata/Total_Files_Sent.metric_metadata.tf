resource "dynatrace_metric_metadata" "Total_Files_Sent" {
  description  = "The total number of files sent by the Web service (since service startup)."
  display_name = "Total Files Sent"
  metric_id    = "metric-iis.total.files.sent.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
