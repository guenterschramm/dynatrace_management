resource "dynatrace_metric_metadata" "ActiveConnections_2" {
  display_name = "ActiveConnections"
  metric_id    = "metric-cloud.aws.privatelinkservices.ActiveConnections.By.Service_Id.VPC_Endpoint_Id"
  unit         = "Count"
}
