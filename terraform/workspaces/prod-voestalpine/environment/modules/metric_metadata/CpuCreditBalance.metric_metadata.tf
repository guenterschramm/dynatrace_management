resource "dynatrace_metric_metadata" "CpuCreditBalance" {
  display_name = "CpuCreditBalance"
  metric_id    = "metric-cloud.aws.amazonmq.CpuCreditBalance.By.Broker"
  unit         = "Count"
}
