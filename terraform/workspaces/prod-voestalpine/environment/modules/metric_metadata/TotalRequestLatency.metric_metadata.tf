resource "dynatrace_metric_metadata" "TotalRequestLatency" {
  display_name = "TotalRequestLatency"
  metric_id    = "metric-cloud.aws.s3.TotalRequestLatency.By.BucketName.FilterId"
  unit         = "Milliseconds"
}
