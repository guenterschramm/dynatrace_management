resource "dynatrace_metric_metadata" "DatabaseConnections_1" {
  display_name = "DatabaseConnections"
  metric_id    = "metric-cloud.aws.docdb.DatabaseConnections.By.DBClusterIdentifier"
  unit         = "Count"
}
