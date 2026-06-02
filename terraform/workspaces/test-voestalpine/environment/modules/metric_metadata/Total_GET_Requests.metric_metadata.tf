resource "dynatrace_metric_metadata" "Total_GET_Requests" {
  description  = "The number of HTTP requests using the GET method (since service startup). Get requests are the most common HTTP request."
  display_name = "Total GET Requests"
  metric_id    = "metric-iis.total.get.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
