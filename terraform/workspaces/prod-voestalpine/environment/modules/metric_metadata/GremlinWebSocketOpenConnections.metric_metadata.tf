resource "dynatrace_metric_metadata" "GremlinWebSocketOpenConnections" {
  display_name = "GremlinWebSocketOpenConnections"
  metric_id    = "metric-cloud.aws.neptune.GremlinWebSocketOpenConnections.By.DBInstanceIdentifier"
  unit         = "Count"
}
