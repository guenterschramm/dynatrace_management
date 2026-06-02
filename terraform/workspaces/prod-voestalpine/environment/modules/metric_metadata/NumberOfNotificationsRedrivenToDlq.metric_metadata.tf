resource "dynatrace_metric_metadata" "NumberOfNotificationsRedrivenToDlq" {
  display_name = "NumberOfNotificationsRedrivenToDlq"
  metric_id    = "metric-cloud.aws.sns.NumberOfNotificationsRedrivenToDlq.By.TopicName"
  unit         = "Count"
}
