resource "dynatrace_span_attribute" "rsocket_route" {
  key     = "rsocket.route"
  masking = "NOT_MASKED"
}
