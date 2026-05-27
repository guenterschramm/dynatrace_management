resource "dynatrace_log_storage" "_Built-in_Databases" {
  name            = "[Built-in] Databases"
  enabled         = false
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEM2RjQ4MzUyQzA5OEFCRTgAJDI5ZTc1NWI3LTA0YTgtM2U3Yi05ZDgzLWVmNjc1YWFmMDViZb7vVN4V2t6t"
  scope           = "environment"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Microsoft SQL Server", "Oracle Database", "PostgreSQL", "MySQL", "SAP HanaDB" ]
    }
  }
}
