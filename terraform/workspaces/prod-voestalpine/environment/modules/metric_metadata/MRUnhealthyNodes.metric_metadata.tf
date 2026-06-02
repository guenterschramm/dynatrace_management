resource "dynatrace_metric_metadata" "MRUnhealthyNodes" {
  display_name = "MRUnhealthyNodes"
  metric_id    = "metric-cloud.aws.emr_ec2.MRUnhealthyNodes.By.JobFlowId"
  unit         = "Count"
}
