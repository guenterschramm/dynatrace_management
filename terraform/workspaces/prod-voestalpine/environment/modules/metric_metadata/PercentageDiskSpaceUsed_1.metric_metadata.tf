resource "dynatrace_metric_metadata" "PercentageDiskSpaceUsed_1" {
  display_name = "PercentageDiskSpaceUsed"
  metric_id    = "metric-cloud.aws.redshift.PercentageDiskSpaceUsed.By.ClusterIdentifier.NodeID"
  unit         = "Percent"
}
