resource "dynatrace_metric_metadata" "Total_Method_Requests" {
  description  = "The number of all HTTP requests (since service startup)."
  display_name = "Total Method Requests"
  metric_id    = "metric-iis.total.method.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
