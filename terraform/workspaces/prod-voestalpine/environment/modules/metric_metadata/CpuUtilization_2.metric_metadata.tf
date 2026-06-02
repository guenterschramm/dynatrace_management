resource "dynatrace_metric_metadata" "CpuUtilization_2" {
  display_name = "CpuUtilization"
  metric_id    = "metric-cloud.aws.amazonmq.CpuUtilization.By.Broker"
  unit         = "Percent"
}
