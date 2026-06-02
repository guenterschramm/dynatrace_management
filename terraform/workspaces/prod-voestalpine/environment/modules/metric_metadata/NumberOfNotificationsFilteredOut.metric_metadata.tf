resource "dynatrace_metric_metadata" "NumberOfNotificationsFilteredOut" {
  display_name = "NumberOfNotificationsFilteredOut"
  metric_id    = "metric-cloud.aws.sns.NumberOfNotificationsFilteredOut.By.TopicName"
  unit         = "Count"
}
