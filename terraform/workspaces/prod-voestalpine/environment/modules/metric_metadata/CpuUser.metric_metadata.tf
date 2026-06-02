resource "dynatrace_metric_metadata" "CpuUser" {
  display_name = "CpuUser"
  metric_id    = "metric-cloud.aws.kafka.CpuUser.By.Broker_ID.Cluster_Name"
  unit         = "Percent"
}
