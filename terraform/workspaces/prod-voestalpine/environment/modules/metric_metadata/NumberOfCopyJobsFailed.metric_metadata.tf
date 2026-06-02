resource "dynatrace_metric_metadata" "NumberOfCopyJobsFailed" {
  display_name = "NumberOfCopyJobsFailed"
  metric_id    = "metric-cloud.aws.backup.NumberOfCopyJobsFailed.By.BackupVaultName.ResourceType"
  unit         = "Count"
}
