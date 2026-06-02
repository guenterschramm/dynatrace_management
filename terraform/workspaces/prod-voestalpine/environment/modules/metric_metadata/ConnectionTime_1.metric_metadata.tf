resource "dynatrace_metric_metadata" "ConnectionTime_1" {
  display_name = "ConnectionTime"
  metric_id    = "metric-cloud.aws.route53.ConnectionTime.By.HealthCheckId.Region"
  unit         = "Milliseconds"
}
