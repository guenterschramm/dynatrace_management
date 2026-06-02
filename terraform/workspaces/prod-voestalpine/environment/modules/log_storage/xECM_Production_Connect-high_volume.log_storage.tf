resource "dynatrace_log_storage" "xECM_Production_Connect-high_volume" {
  name            = "xECM Production (Connect) - high volume"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEMzNDVDQTVEMEQ3NjA0MjQAJDQ4YjlmYTA3LWUyMWYtM2JhYi05NTNiLTAyYjFkMWVkM2RmOL7vVN4V2t6t"
  scope           = "HOST_GROUP-C345CA5D0D760424"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "loglevel"
      operator  = "MATCHES"
      values    = [ "ERROR", "ALERT", "CRITICAL", "EMERGENCY", "SEVERE", "WARN" ]
    }
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#.log", "D:\\Opentext\\OTCS\\logs\\connect_logs\\connect#_#.log" ]
    }
  }
}
