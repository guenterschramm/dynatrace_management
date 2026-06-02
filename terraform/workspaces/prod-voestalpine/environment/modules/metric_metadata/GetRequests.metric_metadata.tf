resource "dynatrace_metric_metadata" "GetRequests" {
  display_name = "GetRequests"
  metric_id    = "metric-cloud.aws.s3.GetRequests.By.BucketName.FilterId"
  unit         = "Count"
}
