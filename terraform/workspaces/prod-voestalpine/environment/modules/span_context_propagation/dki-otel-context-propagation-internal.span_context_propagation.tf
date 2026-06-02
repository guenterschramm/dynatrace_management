resource "dynatrace_span_context_propagation" "dki-otel-context-propagation-internal" {
  name   = "dki-otel-context-propagation-internal"
  action = "PROPAGATE"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "INTERNAL"
    }
  }
}
