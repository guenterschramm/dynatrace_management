resource "dynatrace_log_storage" "Tomcat_Logs_1" {
  name            = "Tomcat Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDRCMzBDODA2QkVEMDM0ODQAJGFiNDNjYTE5LWY5OWMtMzE4MS04ZjdmLWZlMjJkMmQyMTRmNL7vVN4V2t6t"
  scope           = "HOST-B11F9A84119F181C"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Apache Tomcat" ]
    }
  }
}
