resource "dynatrace_metric_metadata" "NumberOfRestoreJobsRunning" {
  display_name = "NumberOfRestoreJobsRunning"
  metric_id    = "metric-cloud.aws.backup.NumberOfRestoreJobsRunning.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
