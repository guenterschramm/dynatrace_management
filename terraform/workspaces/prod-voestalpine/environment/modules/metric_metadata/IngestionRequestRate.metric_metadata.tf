resource "dynatrace_metric_metadata" "IngestionRequestRate" {
  display_name = "IngestionRequestRate"
  metric_id    = "metric-cloud.aws.opensearch_serverless.IngestionRequestRate.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
