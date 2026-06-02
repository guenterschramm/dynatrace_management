resource "dynatrace_metric_metadata" "MRTotalNodes" {
  display_name = "MRTotalNodes"
  metric_id    = "metric-cloud.aws.emr_ec2.MRTotalNodes.By.JobFlowId"
  unit         = "Count"
}
