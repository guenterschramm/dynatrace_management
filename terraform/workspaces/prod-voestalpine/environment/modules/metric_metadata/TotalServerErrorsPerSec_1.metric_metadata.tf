resource "dynatrace_metric_metadata" "TotalServerErrorsPerSec_1" {
  display_name = "TotalServerErrorsPerSec"
  metric_id    = "metric-cloud.aws.neptune.TotalServerErrorsPerSec.By.DBClusterIdentifier.Role"
  unit         = "Count/Second"
}
