resource "dynatrace_metric_metadata" "Otelcol_Processor_Batch_Timeout_Trigger_Send" {
  description  = "Number of times the batch was sent due to a timeout trigger"
  display_name = "Otelcol Processor Batch Timeout Trigger Send"
  metric_id    = "metric-otelcol_processor_batch_timeout_trigger_send.count"
  unit         = "Unspecified"
}
