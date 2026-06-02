resource "dynatrace_metric_metadata" "NetworkRxErrors" {
  display_name = "NetworkRxErrors"
  metric_id    = "metric-cloud.aws.kafka.NetworkRxErrors.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
