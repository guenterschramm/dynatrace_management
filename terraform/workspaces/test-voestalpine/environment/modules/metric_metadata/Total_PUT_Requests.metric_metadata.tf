resource "dynatrace_metric_metadata" "Total_PUT_Requests" {
  description  = "The number of HTTP requests using the PUT method (since service startup)."
  display_name = "Total PUT Requests"
  metric_id    = "metric-iis.total.put.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
