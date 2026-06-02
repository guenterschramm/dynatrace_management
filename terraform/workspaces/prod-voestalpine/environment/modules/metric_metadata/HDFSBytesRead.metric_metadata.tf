resource "dynatrace_metric_metadata" "HDFSBytesRead" {
  display_name = "HDFSBytesRead"
  metric_id    = "metric-cloud.aws.emr_ec2.HDFSBytesRead.By.JobFlowId"
  unit         = "Bytes"
}
