resource "dynatrace_metric_metadata" "Request_count" {
  description  = "Request count"
  display_name = "Request count"
  metric_id    = "metric-tomcat.requestCount.count"
  unit         = "Count"
}
