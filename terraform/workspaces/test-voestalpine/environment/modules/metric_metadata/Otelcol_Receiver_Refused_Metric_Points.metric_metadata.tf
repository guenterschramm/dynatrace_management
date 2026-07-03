resource "dynatrace_metric_metadata" "Otelcol_Receiver_Refused_Metric_Points" {
  description  = "Number of metric points that could not be pushed into the pipeline. [alpha]"
  display_name = "Otelcol Receiver Refused Metric Points"
  metric_id    = "metric-otelcol_receiver_refused_metric_points.count"
  unit         = "Unspecified"
}
