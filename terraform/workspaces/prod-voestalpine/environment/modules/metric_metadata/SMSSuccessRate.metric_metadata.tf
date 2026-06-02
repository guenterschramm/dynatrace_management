resource "dynatrace_metric_metadata" "SMSSuccessRate" {
  display_name = "SMSSuccessRate"
  metric_id    = "metric-cloud.aws.sns.SMSSuccessRate.By.TopicName"
  unit         = "Count"
}
