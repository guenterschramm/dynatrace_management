resource "dynatrace_metric_metadata" "Waiting_connection_requests" {
  description  = "Number of connection requests currently waiting"
  display_name = "Waiting connection requests"
  metric_id    = "metric-tomcat.connectionPool.waitCount"
  unit         = "Count"
}
