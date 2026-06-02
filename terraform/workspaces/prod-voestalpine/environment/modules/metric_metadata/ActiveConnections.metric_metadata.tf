resource "dynatrace_metric_metadata" "ActiveConnections" {
  display_name = "ActiveConnections"
  metric_id    = "metric-cloud.aws.privatelinkservices.ActiveConnections.By.Service_Id"
  unit         = "Count"
}
