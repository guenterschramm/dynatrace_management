resource "dynatrace_metric_metadata" "ApplicationRequests5xx" {
  display_name = "ApplicationRequests5xx"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.ApplicationRequests5xx.By.EnvironmentName"
  unit         = "Count"
}
