resource "dynatrace_metric_metadata" "ReadProvisionedThroughputExceeded" {
  display_name = "ReadProvisionedThroughputExceeded"
  metric_id    = "metric-cloud.aws.kinesisdatastreams.ReadProvisionedThroughputExceeded.By.StreamName"
  unit         = "Count"
}
