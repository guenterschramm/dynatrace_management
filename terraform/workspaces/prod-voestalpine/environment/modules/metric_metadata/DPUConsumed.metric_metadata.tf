resource "dynatrace_metric_metadata" "DPUConsumed" {
  display_name = "DPUConsumed"
  metric_id    = "metric-cloud.aws.athena.DPUConsumed.By.WorkGroup"
  unit         = "Count"
}
