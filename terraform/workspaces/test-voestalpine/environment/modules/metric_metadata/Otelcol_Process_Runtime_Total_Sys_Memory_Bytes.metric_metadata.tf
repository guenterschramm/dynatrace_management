resource "dynatrace_metric_metadata" "Otelcol_Process_Runtime_Total_Sys_Memory_Bytes" {
  description  = "Total bytes of memory obtained from the OS (see 'go doc runtime.MemStats.Sys')"
  display_name = "Otelcol Process Runtime Total Sys Memory Bytes"
  metric_id    = "metric-otelcol_process_runtime_total_sys_memory_bytes"
  unit         = "Unspecified"
}
