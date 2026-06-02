resource "dynatrace_metric_metadata" "AuroraGlobalDBReplicationLag" {
  display_name = "AuroraGlobalDBReplicationLag"
  metric_id    = "metric-cloud.aws.rds.AuroraGlobalDBReplicationLag.By.DBClusterIdentifier"
  unit         = "Milliseconds"
}
