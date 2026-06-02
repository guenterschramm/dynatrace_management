resource "dynatrace_metric_metadata" "TotalDataRetained" {
  display_name = "TotalDataRetained"
  metric_id    = "metric-cloud.aws.cloudtrail.TotalDataRetained.By.TrailName"
  unit         = "Bytes"
}
