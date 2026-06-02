resource "dynatrace_metric_metadata" "TimeToFirstByte_1" {
  display_name = "TimeToFirstByte"
  metric_id    = "metric-cloud.aws.route53.TimeToFirstByte.By.HealthCheckId.Region"
  unit         = "Milliseconds"
}
