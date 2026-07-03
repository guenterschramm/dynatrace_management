resource "dynatrace_metric_metadata" "Otelcol_Exporter_Send_Failed_Spans" {
  description  = "Number of spans in failed attempts to send to destination. [alpha]"
  display_name = "Otelcol Exporter Send Failed Spans"
  metric_id    = "metric-otelcol_exporter_send_failed_spans.count"
  unit         = "Unspecified"
}
