resource "dynatrace_metric_metadata" "IsIdle" {
  display_name = "IsIdle"
  metric_id    = "metric-cloud.aws.emr_ec2.IsIdle.By.JobFlowId"
  unit         = "Count"
}
