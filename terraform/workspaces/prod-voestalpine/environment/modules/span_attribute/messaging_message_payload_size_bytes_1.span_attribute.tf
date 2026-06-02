resource "dynatrace_span_attribute" "messaging_message_payload_size_bytes_1" {
  key     = "messaging.message_payload_size_bytes"
  masking = "NOT_MASKED"
}
