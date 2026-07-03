resource "dynatrace_metric_metadata" "Otelcol_Process_Memory_Rss" {
  description  = "Total physical memory (resident set size)"
  display_name = "Otelcol Process Memory Rss"
  metric_id    = "metric-otelcol_process_memory_rss"
  unit         = "Unspecified"
}
