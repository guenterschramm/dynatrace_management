resource "dynatrace_metric_metadata" "TotalRequestsPerSec" {
  display_name = "TotalRequestsPerSec"
  metric_id    = "metric-cloud.aws.neptune.TotalRequestsPerSec.By.DBClusterIdentifier"
  unit         = "Count/Second"
}
