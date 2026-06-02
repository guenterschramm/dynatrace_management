resource "dynatrace_metric_metadata" "S3BytesWritten" {
  display_name = "S3BytesWritten"
  metric_id    = "metric-cloud.aws.emr_ec2.S3BytesWritten.By.JobFlowId"
  unit         = "Bytes"
}
