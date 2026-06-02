resource "dynatrace_metric_metadata" "Total_HEAD_Requests" {
  description  = "The number of HTTP requests using the HEAD method (since service startup). Head requests generally indicate a client is querying the state of a document they already have to see if it needs to be refreshed."
  display_name = "Total HEAD Requests"
  metric_id    = "metric-iis.total.head.requests.count"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
