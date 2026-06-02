resource "dynatrace_metric_metadata" "OutgoingRecords" {
  display_name = "OutgoingRecords"
  metric_id    = "metric-cloud.aws.kinesisdatastreams.OutgoingRecords.By.StreamName"
  unit         = "Count"
}
