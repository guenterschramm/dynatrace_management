resource "dynatrace_metric_metadata" "S3BytesRead" {
  display_name = "S3BytesRead"
  metric_id    = "metric-cloud.aws.emr_ec2.S3BytesRead.By.JobFlowId"
  unit         = "Bytes"
}
