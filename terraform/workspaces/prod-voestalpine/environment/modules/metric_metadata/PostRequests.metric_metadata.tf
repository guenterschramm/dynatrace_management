resource "dynatrace_metric_metadata" "PostRequests" {
  display_name = "PostRequests"
  metric_id    = "metric-cloud.aws.s3.PostRequests.By.BucketName.FilterId"
  unit         = "Count"
}
