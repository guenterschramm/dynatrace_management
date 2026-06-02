resource "dynatrace_metric_metadata" "TotalErrorRate" {
  display_name = "TotalErrorRate"
  metric_id    = "metric-cloud.aws.cloudfront.TotalErrorRate.By.DistributionId.Region"
  unit         = "Percent"
}
