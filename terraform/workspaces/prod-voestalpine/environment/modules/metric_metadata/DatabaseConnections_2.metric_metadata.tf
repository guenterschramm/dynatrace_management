resource "dynatrace_metric_metadata" "DatabaseConnections_2" {
  display_name = "DatabaseConnections"
  metric_id    = "metric-cloud.aws.docdb.DatabaseConnections.By.DBInstanceIdentifier"
  unit         = "Count"
}
