resource "dynatrace_metric_metadata" "PercentageDiskSpaceUsed" {
  display_name = "PercentageDiskSpaceUsed"
  metric_id    = "metric-cloud.aws.redshift.PercentageDiskSpaceUsed.By.ClusterIdentifier"
  unit         = "Percent"
}
