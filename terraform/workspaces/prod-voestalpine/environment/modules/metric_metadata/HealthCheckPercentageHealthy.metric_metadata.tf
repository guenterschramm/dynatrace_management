resource "dynatrace_metric_metadata" "HealthCheckPercentageHealthy" {
  display_name = "HealthCheckPercentageHealthy"
  metric_id    = "metric-cloud.aws.route53.HealthCheckPercentageHealthy.By.HealthCheckId"
  unit         = "Percent"
}
