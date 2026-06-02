resource "dynatrace_metric_metadata" "BufferCacheHitRatio" {
  display_name = "BufferCacheHitRatio"
  metric_id    = "metric-cloud.aws.neptune.BufferCacheHitRatio.By.DBClusterIdentifier"
  unit         = "Percent"
}
