resource "dynatrace_metric_metadata" "AppsPending" {
  display_name = "AppsPending"
  metric_id    = "metric-cloud.aws.emr_ec2.AppsPending.By.JobFlowId"
  unit         = "Count"
}
