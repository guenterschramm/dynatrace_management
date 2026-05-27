resource "dynatrace_grail_security_context" "gcp_zone_dt_security_context" {
  destination_property = "dt.security_context"
  entity_type          = "gcp_zone"
  insert_after         = "vu9U3hXa3q0AAAABADBidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdyYWlsLnNlY3VyaXR5LmNvbnRleHQABnRlbmFudAAGdGVuYW50ACRjZGIwZmFiNi1lYzg3LTM4YjQtODI1YS1hZDQ5NGFjMGNlMTG-71TeFdrerQ"
}
