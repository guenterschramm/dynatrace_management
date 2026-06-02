resource "dynatrace_metric_metadata" "NumberOfBackupJobsCompleted" {
  display_name = "NumberOfBackupJobsCompleted"
  metric_id    = "metric-cloud.aws.backup.NumberOfBackupJobsCompleted.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
