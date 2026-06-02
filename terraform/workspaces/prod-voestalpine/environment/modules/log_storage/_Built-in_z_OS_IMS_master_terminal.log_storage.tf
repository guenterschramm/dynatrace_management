resource "dynatrace_log_storage" "_Built-in_z_OS_IMS_master_terminal" {
  name            = "[Built-in] z/OS IMS master terminal"
  enabled         = false
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACRjZDYyODI3ZC1kNzk3LTNlMDQtYTA3Yy1mMDQ4NDljZDU1Mzi-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "z/OS IMS primary master", "z/OS IMS secondary master" ]
    }
    matcher {
      attribute = "loglevel"
      operator  = "MATCHES"
      values    = [ "ERROR", "WARN" ]
    }
  }
}
