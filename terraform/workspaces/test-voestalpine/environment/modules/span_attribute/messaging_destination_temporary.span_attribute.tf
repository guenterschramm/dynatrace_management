resource "dynatrace_span_attribute" "messaging_destination_temporary" {
  key     = "messaging.destination.temporary"
  masking = "NOT_MASKED"
}
