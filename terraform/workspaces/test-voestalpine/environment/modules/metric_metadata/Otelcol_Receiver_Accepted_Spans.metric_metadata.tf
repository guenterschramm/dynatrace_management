resource "dynatrace_metric_metadata" "Otelcol_Receiver_Accepted_Spans" {
  description  = "Number of spans successfully pushed into the pipeline. [alpha]"
  display_name = "Otelcol Receiver Accepted Spans"
  metric_id    = "metric-otelcol_receiver_accepted_spans.count"
  unit         = "Unspecified"
}
