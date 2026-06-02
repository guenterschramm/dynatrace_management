resource "dynatrace_metric_metadata" "ReadIOPS_3" {
  display_name = "ReadIOPS"
  metric_id    = "metric-cloud.aws.redshift.ReadIOPS.By.ClusterIdentifier"
  unit         = "Count/Second"
}
