resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_juniper_generic_if_total_packets" {
  metric_id       = "metric-func:com.dynatrace.extension.juniper.generic.if.total.packets"
  metric_selector = "(com.dynatrace.extension.juniper.generic.if.out.packets) + (com.dynatrace.extension.juniper.generic.if.in.packets)"
}
