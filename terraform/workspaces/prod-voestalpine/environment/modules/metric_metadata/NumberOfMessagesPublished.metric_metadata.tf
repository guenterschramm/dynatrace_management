resource "dynatrace_metric_metadata" "NumberOfMessagesPublished" {
  display_name = "NumberOfMessagesPublished"
  metric_id    = "metric-cloud.aws.sns.NumberOfMessagesPublished.By.TopicName"
  unit         = "Count"
}
