resource "dynatrace_log_storage" "Windows_Logs" {
  name            = "Windows Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEEIxMUY5QTg0MTE5RjE4MUMAJDg0NzQyYjJjLTk3MjEtMzMxMy04Y2FmLTc1ZTUzZjg0ODlhOL7vVN4V2t6t"
  scope           = "HOST_GROUP-2FA0CB405B360D1C"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows Security Log", "Windows System Log" ]
    }
  }
}
