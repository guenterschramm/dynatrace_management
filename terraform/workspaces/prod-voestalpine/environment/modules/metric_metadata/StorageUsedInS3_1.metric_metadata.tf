resource "dynatrace_metric_metadata" "StorageUsedInS3_1" {
  display_name = "StorageUsedInS3"
  metric_id    = "metric-cloud.aws.opensearch_serverless.StorageUsedInS3.By.ClientId.CollectionId.CollectionName.IndexId.IndexName"
  unit         = "Bytes"
}
