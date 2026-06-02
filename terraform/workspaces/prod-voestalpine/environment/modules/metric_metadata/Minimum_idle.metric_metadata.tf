resource "dynatrace_metric_metadata" "Minimum_idle" {
  description  = "The minimum number of established connections that should be kept in the pool at all times"
  display_name = "Minimum idle"
  metric_id    = "metric-tomcat.connectionPool.minIdle"
  unit         = "Count"
}
