resource "dynatrace_log_storage" "xECM_Steel_Production_Thread" {
  name            = "xECM Steel Production (Thread)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEMzNDVDQTVEMEQ3NjA0MjQAJGQzZTVlNTgyLWI2YjgtMzM0My1iMGEyLTc1ZTM0YWE2NjIxZr7vVN4V2t6t"
  scope           = "HOST_GROUP-C345CA5D0D760424"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\Opentext\\OTCS\\logs\\thread_logs\\thread#.out", "D:\\Opentext\\OTCS\\logs\\thread_logs\\distributedagent#.out" ]
    }
  }
}
