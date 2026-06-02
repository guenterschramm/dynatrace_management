resource "dynatrace_metric_metadata" "ReadIOPS_4" {
  display_name = "ReadIOPS"
  metric_id    = "metric-cloud.aws.redshift.ReadIOPS.By.ClusterIdentifier.NodeID"
  unit         = "Count/Second"
}
