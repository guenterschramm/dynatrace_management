resource "dynatrace_metric_metadata" "SparqlRequestsPerSec" {
  display_name = "SparqlRequestsPerSec"
  metric_id    = "metric-cloud.aws.neptune.SparqlRequestsPerSec.By.DBInstanceIdentifier"
  unit         = "Count/Second"
}
