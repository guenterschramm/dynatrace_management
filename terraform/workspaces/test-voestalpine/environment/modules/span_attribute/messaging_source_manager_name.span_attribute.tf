resource "dynatrace_span_attribute" "messaging_source_manager_name" {
  key     = "messaging.source.manager_name"
  masking = "NOT_MASKED"
}
