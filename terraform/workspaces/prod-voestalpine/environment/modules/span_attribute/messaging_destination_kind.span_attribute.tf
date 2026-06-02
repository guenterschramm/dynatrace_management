resource "dynatrace_span_attribute" "messaging_destination_kind" {
  key     = "messaging.destination.kind"
  masking = "NOT_MASKED"
}
