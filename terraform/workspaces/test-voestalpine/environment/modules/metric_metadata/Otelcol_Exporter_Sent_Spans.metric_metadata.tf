resource "dynatrace_metric_metadata" "Otelcol_Exporter_Sent_Spans" {
  description  = "Number of spans successfully sent to destination. [alpha]"
  display_name = "Otelcol Exporter Sent Spans"
  metric_id    = "metric-otelcol_exporter_sent_spans.count"
  unit         = "Unspecified"
}
