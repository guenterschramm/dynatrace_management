resource "dynatrace_metric_metadata" "TunnelDataOut" {
  display_name = "TunnelDataOut"
  metric_id    = "metric-cloud.aws.vpc_sitetositevpnconnection.TunnelDataOut.By.TunnelIpAddress.VpnId"
  unit         = "Bytes"
}
