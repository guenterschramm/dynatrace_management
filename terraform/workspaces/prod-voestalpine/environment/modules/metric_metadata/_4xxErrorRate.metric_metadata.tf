resource "dynatrace_metric_metadata" "_4xxErrorRate" {
  display_name = "4xxErrorRate"
  metric_id    = "metric-cloud.aws.cloudfront.4xxErrorRate.By.DistributionId.Region"
  unit         = "Percent"
}
