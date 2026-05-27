resource "dynatrace_span_attribute" "messaging_message_id_1" {
  key     = "messaging.message_id"
  masking = "NOT_MASKED"
}
