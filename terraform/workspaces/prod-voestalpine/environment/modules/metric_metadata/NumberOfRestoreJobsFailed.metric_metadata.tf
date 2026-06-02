resource "dynatrace_metric_metadata" "NumberOfRestoreJobsFailed" {
  display_name = "NumberOfRestoreJobsFailed"
  metric_id    = "metric-cloud.aws.backup.NumberOfRestoreJobsFailed.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
