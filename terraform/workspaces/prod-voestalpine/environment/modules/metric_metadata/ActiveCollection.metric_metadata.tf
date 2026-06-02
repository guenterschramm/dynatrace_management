resource "dynatrace_metric_metadata" "ActiveCollection" {
  display_name = "ActiveCollection"
  metric_id    = "metric-cloud.aws.opensearch_serverless.ActiveCollection.By.ClientId.CollectionId.CollectionName"
  unit         = "Count"
}
