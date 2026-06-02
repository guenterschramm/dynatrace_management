resource "dynatrace_metric_metadata" "ContainerPendingRatio" {
  display_name = "ContainerPendingRatio"
  metric_id    = "metric-cloud.aws.emr_ec2.ContainerPendingRatio.By.JobFlowId"
  unit         = "Count"
}
