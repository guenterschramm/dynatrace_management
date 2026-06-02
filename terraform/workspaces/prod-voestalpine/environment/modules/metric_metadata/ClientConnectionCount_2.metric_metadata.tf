resource "dynatrace_metric_metadata" "ClientConnectionCount_2" {
  display_name = "ClientConnectionCount"
  metric_id    = "metric-cloud.aws.kafka.ClientConnectionCount.By.Client_Authentication.Cluster_Name"
  unit         = "Count"
}
