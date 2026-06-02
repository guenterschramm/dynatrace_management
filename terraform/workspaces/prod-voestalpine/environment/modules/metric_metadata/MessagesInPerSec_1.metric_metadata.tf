resource "dynatrace_metric_metadata" "MessagesInPerSec_1" {
  display_name = "MessagesInPerSec"
  metric_id    = "metric-cloud.aws.kafka.MessagesInPerSec.By.Broker_ID.Cluster_Name.Topic"
  unit         = "Count/Second"
}
