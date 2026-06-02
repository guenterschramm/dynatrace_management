resource "dynatrace_metric_metadata" "MissingBlocks" {
  display_name = "MissingBlocks"
  metric_id    = "metric-cloud.aws.emr_ec2.MissingBlocks.By.JobFlowId"
  unit         = "Count"
}
