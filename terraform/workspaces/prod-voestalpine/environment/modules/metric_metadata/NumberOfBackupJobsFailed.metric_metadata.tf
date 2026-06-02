resource "dynatrace_metric_metadata" "NumberOfBackupJobsFailed" {
  display_name = "NumberOfBackupJobsFailed"
  metric_id    = "metric-cloud.aws.backup.NumberOfBackupJobsFailed.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
