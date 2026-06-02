resource "dynatrace_metric_metadata" "BurstCreditBalance" {
  display_name = "BurstCreditBalance"
  metric_id    = "metric-cloud.aws.efs.BurstCreditBalance.By.FileSystemId"
  unit         = "Bytes"
}
