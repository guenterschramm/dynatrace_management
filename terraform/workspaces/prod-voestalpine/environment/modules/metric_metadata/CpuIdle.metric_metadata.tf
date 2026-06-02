resource "dynatrace_metric_metadata" "CpuIdle" {
  display_name = "CpuIdle"
  metric_id    = "metric-cloud.aws.kafka.CpuIdle.By.Broker_ID.Cluster_Name"
  unit         = "Percent"
}
