resource "dynatrace_metric_metadata" "Otelcol_Exporter_Sent_Log_Records" {
  description  = "Number of log record successfully sent to destination."
  display_name = "Otelcol Exporter Sent Log Records"
  metric_id    = "metric-otelcol_exporter_sent_log_records.count"
  unit         = "Unspecified"
}
