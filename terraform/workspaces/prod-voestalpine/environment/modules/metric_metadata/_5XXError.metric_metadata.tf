resource "dynatrace_metric_metadata" "_5XXError" {
  display_name = "5XXError"
  metric_id    = "metric-cloud.aws.apigateway.5XXError.By.ApiName"
  unit         = "Count"
}
