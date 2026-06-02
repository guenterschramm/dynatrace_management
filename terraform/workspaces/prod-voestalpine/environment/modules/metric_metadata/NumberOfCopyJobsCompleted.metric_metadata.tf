resource "dynatrace_metric_metadata" "NumberOfCopyJobsCompleted" {
  display_name = "NumberOfCopyJobsCompleted"
  metric_id    = "metric-cloud.aws.backup.NumberOfCopyJobsCompleted.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
