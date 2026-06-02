resource "dynatrace_log_storage" "FTN_Logs" {
  name            = "FTN Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDc2QjU4NTY2MzE4NEM0QzAAJGJkMjFjYTIzLTFmOTMtMzVlNy1iNWFiLTk5ZGRmMDY4ZGIzML7vVN4V2t6t"
  scope           = "HOST_GROUP-9E6E4B22FA5460EE"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Apache Tomcat" ]
    }
  }
}
