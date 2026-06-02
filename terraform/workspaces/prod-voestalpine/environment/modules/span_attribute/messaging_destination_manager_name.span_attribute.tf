resource "dynatrace_span_attribute" "messaging_destination_manager_name" {
  key     = "messaging.destination.manager_name"
  masking = "NOT_MASKED"
}
