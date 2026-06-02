resource "dynatrace_metric_metadata" "PpsAllowanceExceeded" {
  display_name = "PpsAllowanceExceeded"
  metric_id    = "metric-cloud.aws.kafka.PpsAllowanceExceeded.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
