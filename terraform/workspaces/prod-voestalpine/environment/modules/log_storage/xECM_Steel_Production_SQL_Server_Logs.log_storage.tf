resource "dynatrace_log_storage" "xECM_Steel_Production_SQL_Server_Logs" {
  name            = "xECM Steel Production (SQL Server Logs)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEMzNDVDQTVEMEQ3NjA0MjQAJGI2NjBhNzU1LThkNjAtM2MxZC04YWU5LTVjMWUyZTY4NmJiNL7vVN4V2t6t"
  scope           = "HOST_GROUP-C345CA5D0D760424"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "dt.entity.process_group"
      operator  = "MATCHES"
      values    = [ "PROCESS_GROUP-87D8116ABC1969D7" ]
    }
  }
}
