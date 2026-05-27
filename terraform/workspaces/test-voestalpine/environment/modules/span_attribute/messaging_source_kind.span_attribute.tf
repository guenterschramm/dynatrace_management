resource "dynatrace_span_attribute" "messaging_source_kind" {
  key     = "messaging.source.kind"
  masking = "NOT_MASKED"
}
