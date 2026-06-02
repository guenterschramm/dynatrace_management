resource "dynatrace_metric_metadata" "uptime_4" {
  display_name = "uptime"
  metric_id    = "metric-cloud.aws.flink.uptime.By.Application"
  unit         = "Milliseconds"
}
