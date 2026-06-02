resource "dynatrace_metric_metadata" "Request_count_per_second" {
  description  = "Request count per second"
  display_name = "Request count per second"
  metric_id    = "metric-func:tomcat.requestCountPerSecond"
  unit         = "PerSecond"
}
