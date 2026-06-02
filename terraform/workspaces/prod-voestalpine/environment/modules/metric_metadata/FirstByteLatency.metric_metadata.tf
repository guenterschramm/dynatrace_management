resource "dynatrace_metric_metadata" "FirstByteLatency" {
  display_name = "FirstByteLatency"
  metric_id    = "metric-cloud.aws.s3.FirstByteLatency.By.BucketName.FilterId"
  unit         = "Milliseconds"
}
