resource "dynatrace_log_storage" "Bee4IT_Windows_Event_logs" {
  name            = "Bee4IT (Windows Event logs)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEY4MjU0QjBBNDM5M0RBOEQAJGMwZmUzY2UzLTNlOWUtM2EwZS1hOGVkLTUxNTRkMDA0MzM1Zr7vVN4V2t6t"
  scope           = "HOST_GROUP-F8254B0A4393DA8D"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows Security Log", "Windows System Log" ]
    }
  }
}
