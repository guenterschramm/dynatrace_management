resource "dynatrace_metric_metadata" "EMFParsingErrors" {
  display_name = "EMFParsingErrors"
  metric_id    = "metric-cloud.aws.logs.EMFParsingErrors.By.LogGroupName"
  unit         = "Count"
}
