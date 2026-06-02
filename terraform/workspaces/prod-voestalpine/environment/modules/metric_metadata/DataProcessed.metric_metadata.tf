resource "dynatrace_metric_metadata" "DataProcessed" {
  display_name = "DataProcessed"
  metric_id    = "metric-cloud.aws.apigateway.DataProcessed.By.ApiId"
  unit         = "Byte"
}
