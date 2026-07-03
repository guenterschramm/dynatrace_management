resource "dynatrace_metric_metadata" "Otelcol_Receiver_Accepted_Metric_Points" {
  description  = "Number of metric points successfully pushed into the pipeline. [alpha]"
  display_name = "Otelcol Receiver Accepted Metric Points"
  metric_id    = "metric-otelcol_receiver_accepted_metric_points.count"
  unit         = "Unspecified"
}
