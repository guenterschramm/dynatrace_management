resource "dynatrace_metric_metadata" "HDFSBytesWritten" {
  display_name = "HDFSBytesWritten"
  metric_id    = "metric-cloud.aws.emr_ec2.HDFSBytesWritten.By.JobFlowId"
  unit         = "Bytes"
}
