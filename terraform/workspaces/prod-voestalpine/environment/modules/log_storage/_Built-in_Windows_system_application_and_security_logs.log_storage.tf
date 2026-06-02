resource "dynatrace_log_storage" "_Built-in_Windows_system_application_and_security_logs" {
  name            = "[Built-in] Windows system, application, and security logs"
  enabled         = false
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACRkODc3NDIzNS05NDg5LTM3YTQtYTM4My1iNWQ4YjdhZmFhMmS-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows System Log", "Windows Security Log", "Windows Application Log" ]
    }
  }
}
