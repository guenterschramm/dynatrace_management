resource "dynatrace_metric_metadata" "ApplicationRequestsTotal" {
  display_name = "ApplicationRequestsTotal"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.ApplicationRequestsTotal.By.EnvironmentName"
  unit         = "Count"
}
