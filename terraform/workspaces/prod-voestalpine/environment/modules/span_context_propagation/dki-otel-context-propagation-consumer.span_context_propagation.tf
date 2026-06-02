resource "dynatrace_span_context_propagation" "dki-otel-context-propagation-consumer" {
  name         = "dki-otel-context-propagation-consumer"
  action       = "PROPAGATE"
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOnNwYW4tY29udGV4dC1wcm9wYWdhdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJDVkNzUzNmM4LTFiYzEtM2JlZi1hOGEyLWY1MDYyOWJkMGRkOb7vVN4V2t6t"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "CONSUMER"
    }
  }
}
