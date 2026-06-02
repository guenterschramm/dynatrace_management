resource "dynatrace_log_storage" "xECM_Corporate_Production_Windows_Event_logs" {
  name            = "xECM Corporate Production (Windows Event logs)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDU1NEJBNzUyQkQwMUY4RTMAJGRjNTdmZDY5LWZlMjgtMzg3ZS1hYWExLTY0MWJkZjk0MDUwYr7vVN4V2t6t"
  scope           = "HOST_GROUP-554BA752BD01F8E3"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows Security Log", "Windows System Log" ]
    }
  }
}
