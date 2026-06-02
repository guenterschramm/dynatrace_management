resource "dynatrace_metric_metadata" "DeleteRequests" {
  display_name = "DeleteRequests"
  metric_id    = "metric-cloud.aws.s3.DeleteRequests.By.BucketName.FilterId"
  unit         = "Count"
}
