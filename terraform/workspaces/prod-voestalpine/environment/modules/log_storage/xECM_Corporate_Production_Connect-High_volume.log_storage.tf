resource "dynatrace_log_storage" "xECM_Corporate_Production_Connect-High_volume" {
  name            = "xECM Corporate Production (Connect) - High volume"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDU1NEJBNzUyQkQwMUY4RTMAJDI0MjBhMTU5LTFlZDktMzRlMy05YTVmLWM1ZmU5MDhkN2Y5Yr7vVN4V2t6t"
  scope           = "HOST_GROUP-554BA752BD01F8E3"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "loglevel"
      operator  = "MATCHES"
      values    = [ "ERROR", "CRITICAL", "ALERT", "EMERGENCY", "SEVERE", "WARN" ]
    }
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#.log", "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#.#.log" ]
    }
  }
}
