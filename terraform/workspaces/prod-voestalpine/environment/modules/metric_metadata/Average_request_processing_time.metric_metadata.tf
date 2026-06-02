resource "dynatrace_metric_metadata" "Average_request_processing_time" {
  description  = "Request processing time divided by request count"
  display_name = "Average request processing time"
  metric_id    = "metric-func:tomcat.processingTimePerRequest"
  unit         = "MilliSecond"
}
