resource "dynatrace_metric_metadata" "Otelcol_Exporter_Queue_Capacity" {
  description  = "Fixed capacity of the retry queue (in batches)"
  display_name = "Otelcol Exporter Queue Capacity"
  metric_id    = "metric-otelcol_exporter_queue_capacity"
  unit         = "Unspecified"
}
