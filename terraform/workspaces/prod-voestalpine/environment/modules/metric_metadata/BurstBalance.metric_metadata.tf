resource "dynatrace_metric_metadata" "BurstBalance" {
  display_name = "BurstBalance"
  metric_id    = "metric-cloud.aws.ebs.BurstBalance.By.VolumeId"
  unit         = "Percent"
}
