resource "dynatrace_metric_metadata" "TotalPaidStorageBytes" {
  display_name = "TotalPaidStorageBytes"
  metric_id    = "metric-cloud.aws.cloudtrail.TotalPaidStorageBytes.By.TrailName"
  unit         = "Bytes"
}
