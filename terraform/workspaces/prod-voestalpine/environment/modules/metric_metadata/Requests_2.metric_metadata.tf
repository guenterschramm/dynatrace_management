resource "dynatrace_metric_metadata" "Requests_2" {
  display_name = "Requests"
  metric_id    = "metric-cloud.aws.cloudfront.Requests.By.DistributionId.Region"
  unit         = "Count"
}
