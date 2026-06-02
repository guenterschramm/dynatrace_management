resource "dynatrace_metric_metadata" "WriteProvisionedThroughputExceeded" {
  display_name = "WriteProvisionedThroughputExceeded"
  metric_id    = "metric-cloud.aws.kinesisdatastreams.WriteProvisionedThroughputExceeded.By.StreamName"
  unit         = "Count"
}
