resource "dynatrace_metric_metadata" "SelectRequests" {
  display_name = "SelectRequests"
  metric_id    = "metric-cloud.aws.s3.SelectRequests.By.BucketName.FilterId"
  unit         = "Count"
}
