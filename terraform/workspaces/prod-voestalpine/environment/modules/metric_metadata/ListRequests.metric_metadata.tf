resource "dynatrace_metric_metadata" "ListRequests" {
  display_name = "ListRequests"
  metric_id    = "metric-cloud.aws.s3.ListRequests.By.BucketName.FilterId"
  unit         = "Count"
}
