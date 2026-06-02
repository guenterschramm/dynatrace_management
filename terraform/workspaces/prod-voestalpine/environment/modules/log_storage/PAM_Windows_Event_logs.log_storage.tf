resource "dynatrace_log_storage" "PAM_Windows_Event_logs" {
  name            = "PAM (Windows Event logs)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDc2QjU4NTY2MzE4NEM0QzAAJGUxNDI5YjgwLTAzZWUtM2E2Mi1iZDQ2LTFlMjk0ZTA5NDFhYr7vVN4V2t6t"
  scope           = "HOST_GROUP-76B585663184C4C0"
  send_to_storage = true
}
