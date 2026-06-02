resource "dynatrace_metric_metadata" "ApplicationRequests4xx" {
  display_name = "ApplicationRequests4xx"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.ApplicationRequests4xx.By.EnvironmentName"
  unit         = "Count"
}
