resource "dynatrace_log_storage" "Windows_Logs" {
  name            = "Windows Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDU1NEJBNzUyQkQwMUY4RTMAJDcyMjM3MDcyLTgyMDAtMzA3Mi05NzgwLTgwMzMwYmQ3ZTAxOb7vVN4V2t6t"
  scope           = "HOST_GROUP-55F546D63819BA58"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows Security Log", "Windows System Log" ]
    }
  }
}
