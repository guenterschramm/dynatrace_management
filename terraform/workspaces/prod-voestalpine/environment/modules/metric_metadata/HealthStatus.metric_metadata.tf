resource "dynatrace_metric_metadata" "HealthStatus" {
  display_name = "HealthStatus"
  metric_id    = "metric-cloud.aws.redshift.HealthStatus.By.ClusterIdentifier"
  unit         = "Count"
}
