resource "dynatrace_metric_metadata" "EMFValidationErrors" {
  display_name = "EMFValidationErrors"
  metric_id    = "metric-cloud.aws.logs.EMFValidationErrors.By.LogGroupName"
  unit         = "Count"
}
