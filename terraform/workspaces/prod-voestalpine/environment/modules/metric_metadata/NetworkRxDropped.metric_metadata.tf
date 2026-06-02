resource "dynatrace_metric_metadata" "NetworkRxDropped" {
  display_name = "NetworkRxDropped"
  metric_id    = "metric-cloud.aws.kafka.NetworkRxDropped.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
