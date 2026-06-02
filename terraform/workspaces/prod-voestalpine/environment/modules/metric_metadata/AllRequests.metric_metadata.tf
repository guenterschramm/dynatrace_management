resource "dynatrace_metric_metadata" "AllRequests" {
  display_name = "AllRequests"
  metric_id    = "metric-cloud.aws.s3.AllRequests.By.BucketName.FilterId"
  unit         = "Count"
}
