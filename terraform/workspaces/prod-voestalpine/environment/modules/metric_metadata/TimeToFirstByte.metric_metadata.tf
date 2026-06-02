resource "dynatrace_metric_metadata" "TimeToFirstByte" {
  display_name = "TimeToFirstByte"
  metric_id    = "metric-cloud.aws.route53.TimeToFirstByte.By.HealthCheckId"
  unit         = "Milliseconds"
}
