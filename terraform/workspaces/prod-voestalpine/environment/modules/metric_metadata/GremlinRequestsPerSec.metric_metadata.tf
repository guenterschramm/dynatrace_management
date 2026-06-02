resource "dynatrace_metric_metadata" "GremlinRequestsPerSec" {
  display_name = "GremlinRequestsPerSec"
  metric_id    = "metric-cloud.aws.neptune.GremlinRequestsPerSec.By.DBInstanceIdentifier"
  unit         = "Count/Second"
}
