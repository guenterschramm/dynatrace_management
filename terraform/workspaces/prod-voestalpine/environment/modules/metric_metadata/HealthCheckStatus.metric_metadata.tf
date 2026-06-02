resource "dynatrace_metric_metadata" "HealthCheckStatus" {
  display_name = "HealthCheckStatus"
  metric_id    = "metric-cloud.aws.route53.HealthCheckStatus.By.HealthCheckId"
  unit         = "Count"
}
