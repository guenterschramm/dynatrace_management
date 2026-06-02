resource "dynatrace_span_context_propagation" "dki-otel-context-propagation-server" {
  name         = "dki-otel-context-propagation-server"
  action       = "PROPAGATE"
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOnNwYW4tY29udGV4dC1wcm9wYWdhdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJGI4YWU2NTY2LTA2MzAtM2I4My05NzUxLTcyNDBhOGQxNGM1Mr7vVN4V2t6t"
  matches {
    match {
      comparison = "EQUALS"
      source     = "SPAN_KIND"
      value      = "SERVER"
    }
  }
}
