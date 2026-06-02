resource "dynatrace_metric_metadata" "BytesDownloaded" {
  display_name = "BytesDownloaded"
  metric_id    = "metric-cloud.aws.cloudfront.BytesDownloaded.By.DistributionId.Region"
  unit         = "Count"
}
