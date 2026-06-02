resource "dynatrace_metric_metadata" "NumberOfBackupJobsExpired" {
  display_name = "NumberOfBackupJobsExpired"
  metric_id    = "metric-cloud.aws.backup.NumberOfBackupJobsExpired.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
