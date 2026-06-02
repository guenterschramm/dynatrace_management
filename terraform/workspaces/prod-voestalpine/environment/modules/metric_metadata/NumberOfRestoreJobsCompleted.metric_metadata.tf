resource "dynatrace_metric_metadata" "NumberOfRestoreJobsCompleted" {
  display_name = "NumberOfRestoreJobsCompleted"
  metric_id    = "metric-cloud.aws.backup.NumberOfRestoreJobsCompleted.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
