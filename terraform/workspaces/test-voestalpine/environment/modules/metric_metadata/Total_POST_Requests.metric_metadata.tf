resource "dynatrace_metric_metadata" "Total_POST_Requests" {
  description  = "The number of HTTP requests using the POST method (since service startup)."
  display_name = "Total POST Requests"
  metric_id    = "metric-iis.total.post.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
