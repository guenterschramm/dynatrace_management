resource "dynatrace_metric_metadata" "Current_Queue_Size" {
  description  = "Number of requests in the queue"
  display_name = "Current Queue Size"
  metric_id    = "metric-iis.current.queue.size"
  tags         = [ "IIS", "Webserver" ]
  unit         = "Count"
}
