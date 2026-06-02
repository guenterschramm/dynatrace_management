resource "dynatrace_metric_metadata" "OnlineIndexPercentageProgress" {
  display_name = "OnlineIndexPercentageProgress"
  metric_id    = "metric-cloud.aws.dynamodb.OnlineIndexPercentageProgress.By.TableName"
  unit         = "Count"
}
