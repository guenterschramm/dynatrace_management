resource "dynatrace_metric_metadata" "Total_OPTIONS_Requests" {
  description  = "The number of HTTP requests using the OPTIONS method (since service startup)."
  display_name = "Total OPTIONS Requests"
  metric_id    = "metric-iis.total.options.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
