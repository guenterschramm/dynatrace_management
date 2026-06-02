resource "dynatrace_span_attribute" "rsocket_request-type" {
  key     = "rsocket.request-type"
  masking = "NOT_MASKED"
}
