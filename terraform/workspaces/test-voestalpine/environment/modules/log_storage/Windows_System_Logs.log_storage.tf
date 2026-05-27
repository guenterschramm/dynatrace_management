resource "dynatrace_log_storage" "Windows_System_Logs" {
  name            = "Windows System Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEEwMzNBMTcwREU0N0IyODcAJDA0NTYyZWFjLTc0YTYtMzZkNS1iZmFkLTcyYTYyOTAyYWEzZb7vVN4V2t6t"
  scope           = "HOST_GROUP-C6F48352C098ABE8"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows Security Log", "Windows System Log" ]
    }
  }
}
