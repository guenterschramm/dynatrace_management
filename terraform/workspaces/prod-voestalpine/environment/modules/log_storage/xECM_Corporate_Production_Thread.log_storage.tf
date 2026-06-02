resource "dynatrace_log_storage" "xECM_Corporate_Production_Thread" {
  name            = "xECM Corporate Production (Thread)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDU1NEJBNzUyQkQwMUY4RTMAJDhiY2JlMGY5LTBiNjYtMzEyZS1iMWQyLTdlMWQzODY1MGQ2ZL7vVN4V2t6t"
  scope           = "HOST_GROUP-554BA752BD01F8E3"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\Opentext\\OTCS\\logs\\thread_logs\\thread#.out", "D:\\Opentext\\OTCS\\logs\\thread_logs\\distributedagent#.out" ]
    }
  }
}
