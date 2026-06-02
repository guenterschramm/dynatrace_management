resource "dynatrace_metric_metadata" "CoreNodesPending" {
  display_name = "CoreNodesPending"
  metric_id    = "metric-cloud.aws.emr_ec2.CoreNodesPending.By.JobFlowId"
  unit         = "Count"
}
