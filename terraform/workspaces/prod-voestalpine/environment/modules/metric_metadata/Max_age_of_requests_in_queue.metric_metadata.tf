resource "dynatrace_metric_metadata" "Max_age_of_requests_in_queue" {
  description  = "Age of the oldest request in the queue"
  display_name = "Max age of requests in queue"
  metric_id    = "metric-iis.HTTPServiceRequestQueues.MaxQueueItemAge"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "Second"
}
