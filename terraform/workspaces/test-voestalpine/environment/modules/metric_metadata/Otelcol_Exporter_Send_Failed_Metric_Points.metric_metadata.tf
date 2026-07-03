resource "dynatrace_metric_metadata" "Otelcol_Exporter_Send_Failed_Metric_Points" {
  description  = "Number of metric points in failed attempts to send to destination. [alpha]"
  display_name = "Otelcol Exporter Send Failed Metric Points"
  metric_id    = "metric-otelcol_exporter_send_failed_metric_points.count"
  unit         = "Unspecified"
}
