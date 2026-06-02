resource "dynatrace_metric_metadata" "NewConnections" {
  display_name = "NewConnections"
  metric_id    = "metric-cloud.aws.privatelinkservices.NewConnections.By.Az.Service_Id"
  unit         = "Count"
}
