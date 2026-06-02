resource "dynatrace_metric_metadata" "TotalLoad" {
  display_name = "TotalLoad"
  metric_id    = "metric-cloud.aws.emr_ec2.TotalLoad.By.JobFlowId"
  unit         = "Count"
}
