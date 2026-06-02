resource "dynatrace_metric_metadata" "Arrival_rate" {
  description  = "Rate at which requests are arriving in the queue"
  display_name = "Arrival rate"
  metric_id    = "metric-iis.HTTPServiceRequestQueues.ArrivalRate"
  tags         = [ "Extension", "IIS", "Webserver" ]
  unit         = "PerSecond"
}
