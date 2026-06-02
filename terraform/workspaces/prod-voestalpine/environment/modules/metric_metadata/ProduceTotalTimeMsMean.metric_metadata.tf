resource "dynatrace_metric_metadata" "ProduceTotalTimeMsMean" {
  display_name = "ProduceTotalTimeMsMean"
  metric_id    = "metric-cloud.aws.kafka.ProduceTotalTimeMsMean.By.Broker_ID.Cluster_Name"
  unit         = "Milliseconds"
}
