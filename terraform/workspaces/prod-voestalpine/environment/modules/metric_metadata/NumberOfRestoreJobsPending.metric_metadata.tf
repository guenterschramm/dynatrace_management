resource "dynatrace_metric_metadata" "NumberOfRestoreJobsPending" {
  display_name = "NumberOfRestoreJobsPending"
  metric_id    = "metric-cloud.aws.backup.NumberOfRestoreJobsPending.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
