resource "dynatrace_span_context_propagation" "dki-otel-context-propagation-producer" {
  name         = "dki-otel-context-propagation-producer"
  action       = "PROPAGATE"
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOnNwYW4tY29udGV4dC1wcm9wYWdhdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJGVmNjFkYjIyLWFmMjEtM2I5My1hNzZiLTJiMjdhMGUxZTRmZr7vVN4V2t6t"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "PRODUCER"
    }
  }
}
