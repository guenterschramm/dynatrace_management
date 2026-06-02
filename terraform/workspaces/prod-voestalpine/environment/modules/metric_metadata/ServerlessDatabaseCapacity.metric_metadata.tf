resource "dynatrace_metric_metadata" "ServerlessDatabaseCapacity" {
  display_name = "ServerlessDatabaseCapacity"
  metric_id    = "metric-cloud.aws.neptune.ServerlessDatabaseCapacity.By.DBInstanceIdentifier"
  unit         = "Count"
}
