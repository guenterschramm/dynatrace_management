resource "dynatrace_metric_metadata" "MRLostNodes" {
  display_name = "MRLostNodes"
  metric_id    = "metric-cloud.aws.emr_ec2.MRLostNodes.By.JobFlowId"
  unit         = "Count"
}
