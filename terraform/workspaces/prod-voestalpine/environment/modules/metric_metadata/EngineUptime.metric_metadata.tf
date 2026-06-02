resource "dynatrace_metric_metadata" "EngineUptime" {
  display_name = "EngineUptime"
  metric_id    = "metric-cloud.aws.neptune.EngineUptime.By.DBInstanceIdentifier"
  unit         = "Seconds"
}
