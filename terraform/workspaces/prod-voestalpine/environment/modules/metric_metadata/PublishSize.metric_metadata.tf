resource "dynatrace_metric_metadata" "PublishSize" {
  display_name = "PublishSize"
  metric_id    = "metric-cloud.aws.sns.PublishSize.By.TopicName"
  unit         = "Bytes"
}
