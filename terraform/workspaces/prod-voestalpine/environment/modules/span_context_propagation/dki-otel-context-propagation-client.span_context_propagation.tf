resource "dynatrace_span_context_propagation" "dki-otel-context-propagation-client" {
  name         = "dki-otel-context-propagation-client"
  action       = "PROPAGATE"
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOnNwYW4tY29udGV4dC1wcm9wYWdhdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJGE2MTM3OTNkLWFhNDgtM2U1OS05YTY1LTA0MmI3ZTBmOGNhYr7vVN4V2t6t"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "CLIENT"
    }
  }
}
