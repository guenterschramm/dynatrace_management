resource "dynatrace_metric_metadata" "IngestionRequestSuccess" {
  display_name = "IngestionRequestSuccess"
  metric_id    = "metric-cloud.aws.opensearch_serverless.IngestionRequestSuccess.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
