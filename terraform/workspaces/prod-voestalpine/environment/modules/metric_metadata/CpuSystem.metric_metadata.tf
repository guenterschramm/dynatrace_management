resource "dynatrace_metric_metadata" "CpuSystem" {
  display_name = "CpuSystem"
  metric_id    = "metric-cloud.aws.kafka.CpuSystem.By.Broker_ID.Cluster_Name"
  unit         = "Percent"
}
