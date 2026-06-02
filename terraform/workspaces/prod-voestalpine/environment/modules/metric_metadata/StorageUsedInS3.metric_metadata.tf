resource "dynatrace_metric_metadata" "StorageUsedInS3" {
  display_name = "StorageUsedInS3"
  metric_id    = "metric-cloud.aws.opensearch_serverless.StorageUsedInS3.By.ClientId.CollectionId.CollectionName"
  unit         = "Bytes"
}
