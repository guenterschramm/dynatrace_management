resource "dynatrace_metric_metadata" "IngestionDocumentRate" {
  display_name = "IngestionDocumentRate"
  metric_id    = "metric-cloud.aws.opensearch_serverless.IngestionDocumentRate.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
