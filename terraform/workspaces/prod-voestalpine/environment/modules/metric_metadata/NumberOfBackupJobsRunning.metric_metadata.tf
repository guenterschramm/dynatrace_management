resource "dynatrace_metric_metadata" "NumberOfBackupJobsRunning" {
  display_name = "NumberOfBackupJobsRunning"
  metric_id    = "metric-cloud.aws.backup.NumberOfBackupJobsRunning.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
