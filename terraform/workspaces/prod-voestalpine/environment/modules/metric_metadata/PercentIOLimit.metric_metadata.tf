resource "dynatrace_metric_metadata" "PercentIOLimit" {
  display_name = "PercentIOLimit"
  metric_id    = "metric-cloud.aws.efs.PercentIOLimit.By.FileSystemId"
  unit         = "Percent"
}
