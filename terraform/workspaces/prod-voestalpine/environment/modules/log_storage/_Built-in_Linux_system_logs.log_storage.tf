resource "dynatrace_log_storage" "_Built-in_Linux_system_logs" {
  name            = "[Built-in] Linux system logs"
  enabled         = false
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABnRlbmFudAAGdGVuYW50ACQ1MDZlYjRhNC04MjAyLTExZWUtYjk2Mi0wMjQyYWMxMjAwMDK-71TeFdrerQ"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/var/log/syslog", "/var/log/messages" ]
    }
  }
}
