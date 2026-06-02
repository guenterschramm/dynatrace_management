resource "dynatrace_metric_metadata" "Total_DELETE_Requests" {
  description  = "The number of HTTP requests using the DELETE method (since service startup). Delete requests are generally used for file removals."
  display_name = "Total DELETE Requests"
  metric_id    = "metric-iis.total.delete.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
