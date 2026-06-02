resource "dynatrace_metric_metadata" "NumberOfCopyJobsRunning" {
  display_name = "NumberOfCopyJobsRunning"
  metric_id    = "metric-cloud.aws.backup.NumberOfCopyJobsRunning.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
