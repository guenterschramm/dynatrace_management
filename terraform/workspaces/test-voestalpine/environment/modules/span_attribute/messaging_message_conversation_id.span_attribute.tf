resource "dynatrace_span_attribute" "messaging_message_conversation_id" {
  key     = "messaging.message.conversation_id"
  masking = "NOT_MASKED"
}
