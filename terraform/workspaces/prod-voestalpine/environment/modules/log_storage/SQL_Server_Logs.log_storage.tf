resource "dynatrace_log_storage" "SQL_Server_Logs" {
  name            = "SQL Server Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDU1RjU0NkQ2MzgxOUJBNTgAJGU3N2VjZTdhLTcyN2MtMzNkZS1hZTE5LTI3NTgxZjhhYzZhOb7vVN4V2t6t"
  scope           = "HOST_GROUP-55F546D63819BA58"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Microsoft SQL Server" ]
    }
  }
}
