resource "dynatrace_metric_metadata" "CoreNodesRunning" {
  display_name = "CoreNodesRunning"
  metric_id    = "metric-cloud.aws.emr_ec2.CoreNodesRunning.By.JobFlowId"
  unit         = "Count"
}
