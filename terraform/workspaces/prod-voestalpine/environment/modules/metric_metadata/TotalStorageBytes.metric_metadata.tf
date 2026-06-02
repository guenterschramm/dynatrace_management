resource "dynatrace_metric_metadata" "TotalStorageBytes" {
  display_name = "TotalStorageBytes"
  metric_id    = "metric-cloud.aws.cloudtrail.TotalStorageBytes.By.TrailName"
  unit         = "Bytes"
}
