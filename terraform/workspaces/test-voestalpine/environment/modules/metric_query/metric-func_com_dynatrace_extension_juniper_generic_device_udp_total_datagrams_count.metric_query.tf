resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_juniper_generic_device_udp_total_datagrams_count" {
  metric_id       = "metric-func:com.dynatrace.extension.juniper.generic.device.udp.total.datagrams.count"
  metric_selector = "(com.dynatrace.extension.juniper.generic.device.udp.out.datagrams.count) + (com.dynatrace.extension.juniper.generic.device.udp.in.datagrams.count)"
}
