resource "dynatrace_metric_metadata" "Rejected_requests" {
  description  = "Total number of requests rejected from the queue"
  display_name = "Rejected requests"
  metric_id    = "metric-iis.HTTPServiceRequestQueues.RejectedRequests"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Count"
}
