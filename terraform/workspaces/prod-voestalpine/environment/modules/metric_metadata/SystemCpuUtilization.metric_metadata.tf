resource "dynatrace_metric_metadata" "SystemCpuUtilization" {
  display_name = "SystemCpuUtilization"
  metric_id    = "metric-cloud.aws.amazonmq.SystemCpuUtilization.By.Broker"
  unit         = "Percent"
}
