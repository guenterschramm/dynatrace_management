resource "dynatrace_metric_metadata" "NetworkBytesOut" {
  display_name = "NetworkBytesOut"
  metric_id    = "metric-cloud.aws.dax.NetworkBytesOut.By.ClusterId"
  unit         = "Bytes"
}
