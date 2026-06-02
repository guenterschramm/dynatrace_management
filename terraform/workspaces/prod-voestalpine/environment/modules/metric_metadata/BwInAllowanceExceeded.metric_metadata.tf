resource "dynatrace_metric_metadata" "BwInAllowanceExceeded" {
  display_name = "BwInAllowanceExceeded"
  metric_id    = "metric-cloud.aws.kafka.BwInAllowanceExceeded.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
