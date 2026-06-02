resource "dynatrace_metric_metadata" "GetHits" {
  display_name = "GetHits"
  metric_id    = "metric-cloud.aws.elasticache.GetHits.By.CacheClusterId"
  unit         = "Count"
}
