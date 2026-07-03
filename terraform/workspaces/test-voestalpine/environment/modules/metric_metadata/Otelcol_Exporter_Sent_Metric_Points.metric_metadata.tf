resource "dynatrace_metric_metadata" "Otelcol_Exporter_Sent_Metric_Points" {
  description  = "Number of metric points successfully sent to destination. [alpha]"
  display_name = "Otelcol Exporter Sent Metric Points"
  metric_id    = "metric-otelcol_exporter_sent_metric_points.count"
  unit         = "Unspecified"
}
