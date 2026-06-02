resource "dynatrace_metric_metadata" "NumberOfNotificationsDelivered" {
  display_name = "NumberOfNotificationsDelivered"
  metric_id    = "metric-cloud.aws.sns.NumberOfNotificationsDelivered.By.TopicName"
  unit         = "Count"
}
