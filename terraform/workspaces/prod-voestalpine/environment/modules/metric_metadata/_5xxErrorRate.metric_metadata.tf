resource "dynatrace_metric_metadata" "_5xxErrorRate" {
  display_name = "5xxErrorRate"
  metric_id    = "metric-cloud.aws.cloudfront.5xxErrorRate.By.DistributionId.Region"
  unit         = "Percent"
}
