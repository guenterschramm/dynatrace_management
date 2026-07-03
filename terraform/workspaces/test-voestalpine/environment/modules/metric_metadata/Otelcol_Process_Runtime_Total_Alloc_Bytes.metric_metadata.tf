resource "dynatrace_metric_metadata" "Otelcol_Process_Runtime_Total_Alloc_Bytes" {
  description  = "Cumulative bytes allocated for heap objects (see 'go doc runtime.MemStats.TotalAlloc')"
  display_name = "Otelcol Process Runtime Total Alloc Bytes"
  metric_id    = "metric-otelcol_process_runtime_total_alloc_bytes.count"
  unit         = "Unspecified"
}
