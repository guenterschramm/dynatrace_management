resource "dynatrace_metric_metadata" "AppsRunning" {
  display_name = "AppsRunning"
  metric_id    = "metric-cloud.aws.emr_ec2.AppsRunning.By.JobFlowId"
  unit         = "Count"
}
