resource "dynatrace_metric_metadata" "AppsKilled" {
  display_name = "AppsKilled"
  metric_id    = "metric-cloud.aws.emr_ec2.AppsKilled.By.JobFlowId"
  unit         = "Count"
}
