resource "dynatrace_metric_metadata" "FetchConsumerTotalTimeMsMean" {
  display_name = "FetchConsumerTotalTimeMsMean"
  metric_id    = "metric-cloud.aws.kafka.FetchConsumerTotalTimeMsMean.By.Broker_ID.Cluster_Name"
  unit         = "Milliseconds"
}
