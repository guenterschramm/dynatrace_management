resource "dynatrace_metric_metadata" "PutRequests" {
  display_name = "PutRequests"
  metric_id    = "metric-cloud.aws.s3.PutRequests.By.BucketName.FilterId"
  unit         = "Count"
}
