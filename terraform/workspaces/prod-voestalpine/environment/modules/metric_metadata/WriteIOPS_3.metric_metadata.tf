resource "dynatrace_metric_metadata" "WriteIOPS_3" {
  display_name = "WriteIOPS"
  metric_id    = "metric-cloud.aws.redshift.WriteIOPS.By.ClusterIdentifier"
  unit         = "Count/Second"
}
