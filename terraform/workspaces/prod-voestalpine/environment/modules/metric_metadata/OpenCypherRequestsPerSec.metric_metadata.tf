resource "dynatrace_metric_metadata" "OpenCypherRequestsPerSec" {
  display_name = "OpenCypherRequestsPerSec"
  metric_id    = "metric-cloud.aws.neptune.OpenCypherRequestsPerSec.By.DBInstanceIdentifier"
  unit         = "Count/Second"
}
