resource "dynatrace_metric_metadata" "EndpointsCount" {
  display_name = "EndpointsCount"
  metric_id    = "metric-cloud.aws.privatelinkservices.EndpointsCount.By.Az.Service_Id"
  unit         = "Count"
}
