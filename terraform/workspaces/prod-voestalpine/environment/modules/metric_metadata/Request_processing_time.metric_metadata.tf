resource "dynatrace_metric_metadata" "Request_processing_time" {
  description  = "Request processing time"
  display_name = "Request processing time"
  metric_id    = "metric-tomcat.processingTime.count"
  unit         = "MilliSecond"
}
