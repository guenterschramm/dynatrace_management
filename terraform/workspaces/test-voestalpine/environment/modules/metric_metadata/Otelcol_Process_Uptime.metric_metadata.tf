resource "dynatrace_metric_metadata" "Otelcol_Process_Uptime" {
  description  = "Uptime of the process"
  display_name = "Otelcol Process Uptime"
  metric_id    = "metric-otelcol_process_uptime.count"
  unit         = "Unspecified"
}
