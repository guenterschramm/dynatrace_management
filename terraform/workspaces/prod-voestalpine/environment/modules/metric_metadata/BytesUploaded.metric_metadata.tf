resource "dynatrace_metric_metadata" "BytesUploaded" {
  display_name = "BytesUploaded"
  metric_id    = "metric-cloud.aws.s3.BytesUploaded.By.BucketName.FilterId"
  unit         = "Bytes"
}
