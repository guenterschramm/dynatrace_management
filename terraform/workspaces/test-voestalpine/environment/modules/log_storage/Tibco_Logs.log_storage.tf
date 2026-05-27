resource "dynatrace_log_storage" "Tibco_Logs" {
  name            = "Tibco Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDJGQTBDQjQwNUIzNjBEMUMAJDNkMjA3NmQ1LWZmYjItMzc4My1iZTdmLTViZmUwMzgxYTgyNb7vVN4V2t6t"
  scope           = "HOST_GROUP-2FA0CB405B360D1C"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Tibco EMS" ]
    }
  }
}
