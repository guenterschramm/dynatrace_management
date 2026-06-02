resource "dynatrace_metric_metadata" "MessagesInPerSec" {
  display_name = "MessagesInPerSec"
  metric_id    = "metric-cloud.aws.kafka.MessagesInPerSec.By.Broker_ID.Cluster_Name"
  unit         = "Count/Second"
}
