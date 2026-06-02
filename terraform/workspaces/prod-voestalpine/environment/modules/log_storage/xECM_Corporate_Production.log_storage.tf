resource "dynatrace_log_storage" "xECM_Corporate_Production" {
  name            = "xECM Corporate Production"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDQzRjZDNDQwN0RDMTlBRDUAJGQwMmExMDAwLWU3ZjYtMzY0NC1hNWQxLTQzMDI4MDM0OGM0Mr7vVN4V2t6t"
  scope           = "HOST_GROUP-554BA752BD01F8E3"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Apache Tomcat", "IIS", "IIS App Pool", "Apache Log4j", "Apache Camel", "Apache HTTP client", "Java HttpUrlConnection", "Jersey", "Netty", ".NET", "ASP.NET", "CLR", "WCF", "JAX WS" ]
    }
  }
}
