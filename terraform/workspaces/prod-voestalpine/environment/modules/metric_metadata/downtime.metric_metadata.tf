resource "dynatrace_metric_metadata" "downtime" {
  display_name = "downtime"
  metric_id    = "metric-cloud.aws.flink.downtime.By.Application"
  unit         = "Milliseconds"
}
