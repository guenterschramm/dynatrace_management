resource "dynatrace_metric_metadata" "AuroraGlobalDBReplicatedWriteIO" {
  display_name = "AuroraGlobalDBReplicatedWriteIO"
  metric_id    = "metric-cloud.aws.rds.AuroraGlobalDBReplicatedWriteIO.By.DBClusterIdentifier"
  unit         = "Count"
}
