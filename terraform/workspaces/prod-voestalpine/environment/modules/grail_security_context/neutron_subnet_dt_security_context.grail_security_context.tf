resource "dynatrace_grail_security_context" "neutron_subnet_dt_security_context" {
  destination_property = "dt.security_context"
  entity_type          = "neutron_subnet"
  insert_after         = "vu9U3hXa3q0AAAABADBidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdyYWlsLnNlY3VyaXR5LmNvbnRleHQABnRlbmFudAAGdGVuYW50ACRmMjI5NDI3Ny1lOTU1LTM0YzAtYmE2YS1mZTU0MWIxN2VjZjm-71TeFdrerQ"
}
