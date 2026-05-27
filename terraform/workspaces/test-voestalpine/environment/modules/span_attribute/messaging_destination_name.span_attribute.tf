resource "dynatrace_span_attribute" "messaging_destination_name" {
  key     = "messaging.destination.name"
  masking = "NOT_MASKED"
}
