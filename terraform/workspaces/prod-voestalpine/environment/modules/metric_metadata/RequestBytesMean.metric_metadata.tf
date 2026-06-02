resource "dynatrace_metric_metadata" "RequestBytesMean" {
  display_name = "RequestBytesMean"
  metric_id    = "metric-cloud.aws.kafka.RequestBytesMean.By.Broker_ID.Cluster_Name"
  unit         = "Bytes"
}
