resource "dynatrace_metric_metadata" "WriteIOPS_4" {
  display_name = "WriteIOPS"
  metric_id    = "metric-cloud.aws.redshift.WriteIOPS.By.ClusterIdentifier.NodeID"
  unit         = "Count/Second"
}
