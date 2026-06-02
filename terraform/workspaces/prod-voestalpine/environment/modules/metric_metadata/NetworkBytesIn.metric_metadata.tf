resource "dynatrace_metric_metadata" "NetworkBytesIn" {
  display_name = "NetworkBytesIn"
  metric_id    = "metric-cloud.aws.dax.NetworkBytesIn.By.ClusterId"
  unit         = "Bytes"
}
