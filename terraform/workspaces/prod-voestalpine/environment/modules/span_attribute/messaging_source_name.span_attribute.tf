resource "dynatrace_span_attribute" "messaging_source_name" {
  key     = "messaging.source.name"
  masking = "NOT_MASKED"
}
