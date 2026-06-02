resource "dynatrace_log_storage" "Backup_Server_Logs" {
  name            = "Backup Server Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDE4MjkzRTJDMjU2NkJDMUQAJDQyZjBkNmQ2LWZkZjItMzA1Ny1hMGVmLWI3NzBhYWI1YjhmYr7vVN4V2t6t"
  scope           = "HOST-81423551365B91D0"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "Windows Application Log", "Windows Security Log", "Windows System Log", "D:\\MSSQL16.MSSQLSERVER\\MSSQL\\Log\\ERRORLOG" ]
    }
  }
}
