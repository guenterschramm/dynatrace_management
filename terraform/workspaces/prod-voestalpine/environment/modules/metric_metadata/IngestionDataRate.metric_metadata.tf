resource "dynatrace_metric_metadata" "IngestionDataRate" {
  display_name = "IngestionDataRate"
  metric_id    = "metric-cloud.aws.opensearch_serverless.IngestionDataRate.By.ClientId.CollectionId.CollectionName"
  unit         = "Bytes"
}
