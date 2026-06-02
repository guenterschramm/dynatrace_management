resource "dynatrace_metric_metadata" "BwOutAllowanceExceeded" {
  display_name = "BwOutAllowanceExceeded"
  metric_id    = "metric-cloud.aws.kafka.BwOutAllowanceExceeded.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
