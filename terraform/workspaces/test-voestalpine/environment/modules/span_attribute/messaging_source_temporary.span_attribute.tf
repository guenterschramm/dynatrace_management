resource "dynatrace_span_attribute" "messaging_source_temporary" {
  key     = "messaging.source.temporary"
  masking = "NOT_MASKED"
}
