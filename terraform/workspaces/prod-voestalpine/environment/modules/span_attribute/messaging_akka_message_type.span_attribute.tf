resource "dynatrace_span_attribute" "messaging_akka_message_type" {
  key     = "messaging.akka.message.type"
  masking = "NOT_MASKED"
}
