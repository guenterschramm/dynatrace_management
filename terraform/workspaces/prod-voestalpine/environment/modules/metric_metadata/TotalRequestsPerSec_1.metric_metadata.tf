resource "dynatrace_metric_metadata" "TotalRequestsPerSec_1" {
  display_name = "TotalRequestsPerSec"
  metric_id    = "metric-cloud.aws.neptune.TotalRequestsPerSec.By.DBClusterIdentifier.Role"
  unit         = "Count/Second"
}
