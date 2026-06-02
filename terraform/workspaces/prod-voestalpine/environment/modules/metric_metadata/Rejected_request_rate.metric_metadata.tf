resource "dynatrace_metric_metadata" "Rejected_request_rate" {
  description  = "Rate at which requests are rejected from the queue"
  display_name = "Rejected request rate"
  metric_id    = "metric-iis.HTTPServiceRequestQueues.RejectionRate"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
