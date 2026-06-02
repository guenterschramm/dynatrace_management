resource "dynatrace_metric_metadata" "_invalid_Value_123" {
  description = "The average per-second number of retried record sends"
  metric_id   = "metric-kafka.producer.record_retry_rate"
  unit        = "Unspecified"
}
