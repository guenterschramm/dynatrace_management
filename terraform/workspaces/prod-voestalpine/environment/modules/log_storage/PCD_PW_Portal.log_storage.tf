resource "dynatrace_log_storage" "PCD_PW_Portal" {
  name            = "PCD_PW_Portal"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDBBMEE5QjYzNTgwMDJENTUAJGNhMmY0YWJkLWRmYjYtMzRiZS04ZDI0LTgzZTA3NDYwOWY4Zb7vVN4V2t6t"
  scope           = "HOST_GROUP-43F6C4407DC19AD5"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Windows", "Apache Tomcat" ]
    }
  }
}
