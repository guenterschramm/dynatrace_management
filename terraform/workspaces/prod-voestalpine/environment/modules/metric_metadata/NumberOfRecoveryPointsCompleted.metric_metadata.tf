resource "dynatrace_metric_metadata" "NumberOfRecoveryPointsCompleted" {
  display_name = "NumberOfRecoveryPointsCompleted"
  metric_id    = "metric-cloud.aws.backup.NumberOfRecoveryPointsCompleted.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
