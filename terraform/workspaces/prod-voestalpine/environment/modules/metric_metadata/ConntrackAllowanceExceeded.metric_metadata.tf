resource "dynatrace_metric_metadata" "ConntrackAllowanceExceeded" {
  display_name = "ConntrackAllowanceExceeded"
  metric_id    = "metric-cloud.aws.kafka.ConntrackAllowanceExceeded.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
