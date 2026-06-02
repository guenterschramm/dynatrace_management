resource "dynatrace_metric_metadata" "IngestionRequestLatency" {
  display_name = "IngestionRequestLatency"
  metric_id    = "metric-cloud.aws.opensearch_serverless.IngestionRequestLatency.By.ClientId.CollectionId.CollectionName"
  unit         = "Seconds"
}
