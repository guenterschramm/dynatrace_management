resource "dynatrace_metric_metadata" "NetworkTxDropped" {
  display_name = "NetworkTxDropped"
  metric_id    = "metric-cloud.aws.kafka.NetworkTxDropped.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
