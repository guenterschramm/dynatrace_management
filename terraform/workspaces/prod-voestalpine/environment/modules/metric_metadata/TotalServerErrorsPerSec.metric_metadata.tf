resource "dynatrace_metric_metadata" "TotalServerErrorsPerSec" {
  display_name = "TotalServerErrorsPerSec"
  metric_id    = "metric-cloud.aws.neptune.TotalServerErrorsPerSec.By.DBClusterIdentifier"
  unit         = "Count/Second"
}
