resource "dynatrace_metric_metadata" "Promhttp_Metric_Handler_Errors_Total" {
  description  = "Total number of internal errors encountered by the promhttp metric handler."
  display_name = "Promhttp Metric Handler Errors Total"
  metric_id    = "metric-promhttp_metric_handler_errors_total.count"
  unit         = "Unspecified"
}
