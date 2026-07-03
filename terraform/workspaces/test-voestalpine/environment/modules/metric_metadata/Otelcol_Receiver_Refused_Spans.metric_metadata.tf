resource "dynatrace_metric_metadata" "Otelcol_Receiver_Refused_Spans" {
  description  = "Number of spans that could not be pushed into the pipeline. [alpha]"
  display_name = "Otelcol Receiver Refused Spans"
  metric_id    = "metric-otelcol_receiver_refused_spans.count"
  unit         = "Unspecified"
}
