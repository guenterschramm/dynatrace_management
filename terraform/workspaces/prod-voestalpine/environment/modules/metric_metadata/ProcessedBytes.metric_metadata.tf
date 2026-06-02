resource "dynatrace_metric_metadata" "ProcessedBytes" {
  display_name = "ProcessedBytes"
  metric_id    = "metric-cloud.aws.athena.ProcessedBytes.By.WorkGroup"
  unit         = "Bytes"
}
