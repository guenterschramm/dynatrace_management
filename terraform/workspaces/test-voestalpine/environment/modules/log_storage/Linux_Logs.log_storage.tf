resource "dynatrace_log_storage" "Linux_Logs" {
  name            = "Linux Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDJGQTBDQjQwNUIzNjBEMUMAJDAwOTQ4OWI1LWRlMmUtM2EzMS1hMzc0LTRkZDM5MzUyOWE0Yb7vVN4V2t6t"
  scope           = "HOST_GROUP-2FA0CB405B360D1C"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/log/*" ]
    }
  }
}
