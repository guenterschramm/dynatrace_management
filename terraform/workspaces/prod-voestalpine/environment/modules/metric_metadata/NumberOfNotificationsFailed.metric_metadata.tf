resource "dynatrace_metric_metadata" "NumberOfNotificationsFailed" {
  display_name = "NumberOfNotificationsFailed"
  metric_id    = "metric-cloud.aws.sns.NumberOfNotificationsFailed.By.TopicName"
  unit         = "Count"
}
