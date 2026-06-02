resource "dynatrace_log_storage" "xECM_Steel_Production_Windows_Event_logs" {
  name            = "xECM Steel Production (Windows Event logs)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEMzNDVDQTVEMEQ3NjA0MjQAJDliNTcxNTEwLTI5NzMtMzQ4MS04MzY0LWVmNmZkMWQ3ZGFhZL7vVN4V2t6t"
  scope           = "HOST_GROUP-C345CA5D0D760424"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows Security Log", "Windows System Log" ]
    }
  }
}
