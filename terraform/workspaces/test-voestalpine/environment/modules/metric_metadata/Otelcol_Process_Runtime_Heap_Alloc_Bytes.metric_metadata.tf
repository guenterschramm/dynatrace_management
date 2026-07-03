resource "dynatrace_metric_metadata" "Otelcol_Process_Runtime_Heap_Alloc_Bytes" {
  description  = "Bytes of allocated heap objects (see 'go doc runtime.MemStats.HeapAlloc')"
  display_name = "Otelcol Process Runtime Heap Alloc Bytes"
  metric_id    = "metric-otelcol_process_runtime_heap_alloc_bytes"
  unit         = "Unspecified"
}
