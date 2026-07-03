resource "dynatrace_metric_metadata" "Otelcol_Exporter_Send_Failed_Log_Records" {
  description  = "Number of log records in failed attempts to send to destination."
  display_name = "Otelcol Exporter Send Failed Log Records"
  metric_id    = "metric-otelcol_exporter_send_failed_log_records.count"
  unit         = "Unspecified"
}
