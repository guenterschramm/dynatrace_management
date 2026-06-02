resource "dynatrace_metric_metadata" "ConnectionTime" {
  display_name = "ConnectionTime"
  metric_id    = "metric-cloud.aws.route53.ConnectionTime.By.HealthCheckId"
  unit         = "Milliseconds"
}
