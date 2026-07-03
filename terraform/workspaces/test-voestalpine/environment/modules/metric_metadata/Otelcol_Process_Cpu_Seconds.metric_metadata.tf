resource "dynatrace_metric_metadata" "Otelcol_Process_Cpu_Seconds" {
  description  = "Total CPU user and system time in seconds"
  display_name = "Otelcol Process Cpu Seconds"
  metric_id    = "metric-otelcol_process_cpu_seconds.count"
  unit         = "Unspecified"
}
