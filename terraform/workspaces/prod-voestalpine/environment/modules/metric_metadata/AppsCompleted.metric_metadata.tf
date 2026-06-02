resource "dynatrace_metric_metadata" "AppsCompleted" {
  display_name = "AppsCompleted"
  metric_id    = "metric-cloud.aws.emr_ec2.AppsCompleted.By.JobFlowId"
  unit         = "Count"
}
