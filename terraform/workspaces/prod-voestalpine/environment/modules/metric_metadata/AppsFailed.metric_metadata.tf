resource "dynatrace_metric_metadata" "AppsFailed" {
  display_name = "AppsFailed"
  metric_id    = "metric-cloud.aws.emr_ec2.AppsFailed.By.JobFlowId"
  unit         = "Count"
}
