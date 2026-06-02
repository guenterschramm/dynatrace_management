resource "dynatrace_metric_metadata" "HDFSUtilization" {
  display_name = "HDFSUtilization"
  metric_id    = "metric-cloud.aws.emr_ec2.HDFSUtilization.By.JobFlowId"
  unit         = "Percent"
}
