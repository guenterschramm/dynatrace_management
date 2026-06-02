resource "dynatrace_metric_metadata" "LinklocalAllowanceExceeded" {
  display_name = "LinklocalAllowanceExceeded"
  metric_id    = "metric-cloud.aws.kafka.LinklocalAllowanceExceeded.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
