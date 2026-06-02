resource "dynatrace_metric_metadata" "_5xxErrors" {
  display_name = "5xxErrors"
  metric_id    = "metric-cloud.aws.s3.5xxErrors.By.BucketName.FilterId"
  unit         = "Count"
}
