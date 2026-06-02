resource "dynatrace_metric_metadata" "DatabaseConnections" {
  display_name = "DatabaseConnections"
  metric_id    = "metric-cloud.aws.rds.DatabaseConnections.By.DBInstanceIdentifier"
  unit         = "Count"
}
