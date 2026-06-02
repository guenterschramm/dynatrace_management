resource "dynatrace_metric_metadata" "HeadRequests" {
  display_name = "HeadRequests"
  metric_id    = "metric-cloud.aws.s3.HeadRequests.By.BucketName.FilterId"
  unit         = "Count"
}
