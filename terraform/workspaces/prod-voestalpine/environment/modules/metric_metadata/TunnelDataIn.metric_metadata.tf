resource "dynatrace_metric_metadata" "TunnelDataIn" {
  display_name = "TunnelDataIn"
  metric_id    = "metric-cloud.aws.vpc_sitetositevpnconnection.TunnelDataIn.By.TunnelIpAddress.VpnId"
  unit         = "Bytes"
}
