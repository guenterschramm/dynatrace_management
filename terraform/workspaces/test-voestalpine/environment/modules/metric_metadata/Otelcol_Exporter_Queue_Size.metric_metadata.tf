resource "dynatrace_metric_metadata" "Otelcol_Exporter_Queue_Size" {
  description  = "Current size of the retry queue (in batches)"
  display_name = "Otelcol Exporter Queue Size"
  metric_id    = "metric-otelcol_exporter_queue_size"
  unit         = "Unspecified"
}
