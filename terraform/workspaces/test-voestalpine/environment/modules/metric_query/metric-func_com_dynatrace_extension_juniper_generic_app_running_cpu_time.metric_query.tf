resource "dynatrace_metric_query" "metric-func_com_dynatrace_extension_juniper_generic_app_running_cpu_time" {
  metric_id       = "metric-func:com.dynatrace.extension.juniper.generic.app.running.cpu.time"
  metric_selector = "(com.dynatrace.extension.juniper.generic.app.running.cpu.count*10)"
}
