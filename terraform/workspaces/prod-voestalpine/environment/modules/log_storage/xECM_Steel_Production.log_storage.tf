resource "dynatrace_log_storage" "xECM_Steel_Production" {
  name            = "xECM Steel Production"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDlFNkU0QjIyRkE1NDYwRUUAJDg5ZTc0NjQwLTNmMmMtM2EzYy1iYWFkLWEzM2FlZmE2ZTYzMr7vVN4V2t6t"
  scope           = "HOST_GROUP-C345CA5D0D760424"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Apache Tomcat", "IIS", "IIS App Pool", "Apache Log4j", "Apache Camel", "Apache HTTP client", "Java HttpUrlConnection", "Jersey", "Netty", ".NET", "ASP.NET", "CLR", "WCF", "JAX WS" ]
    }
  }
}
