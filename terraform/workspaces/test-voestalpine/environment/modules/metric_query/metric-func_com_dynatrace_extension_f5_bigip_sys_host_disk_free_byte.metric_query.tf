resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_f5_bigip_sys_host_disk_free_byte" {
  metric_id       = "metric-func:com.dynatrace.extension.f5.bigip.sys.host.disk.free.byte"
  metric_selector = "(com.dynatrace.extension.f5.bigip.sys.host.disk.free.blocks)*(com.dynatrace.extension.f5.bigip.sys.host.disk.block.size)"
}
